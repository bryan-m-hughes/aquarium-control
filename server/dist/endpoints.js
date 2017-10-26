"use strict";
/*
Copyright (C) 2013-2017 Bryan Hughes <bryan@nebri.us>

Aquarium Control is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Aquarium Control is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Aquarium Control.  If not, see <http://www.gnu.org/licenses/>.
*/
Object.defineProperty(exports, "__esModule", { value: true });
const http_1 = require("http");
const path_1 = require("path");
const body_parser_1 = require("body-parser");
const revalidator_1 = require("revalidator");
const express = require("express");
const request = require("request");
const IConfig_1 = require("./common/IConfig");
const db_1 = require("./db");
const messaging_1 = require("./messaging");
const util_1 = require("./util");
const db_2 = require("./db");
const DEFAULT_PORT = 3001;
function init(cb) {
    const port = process.env.PORT || DEFAULT_PORT;
    const app = express();
    app.use(body_parser_1.json());
    if (process.env.HOST_CLIENT === 'true') {
        app.use(express.static(path_1.join(__dirname, '..', '..', 'client', 'dist')));
    }
    app.set('view engine', 'pug');
    app.set('views', path_1.join(__dirname, '..', 'views'));
    function ensureAuthentication(req, res, next) {
        const accessToken = req.query.accessToken;
        if (!accessToken) {
            res.redirect('/login');
            return;
        }
        const connectionUrl = 'https://graph.facebook.com/debug_token?' +
            `input_token=${accessToken}&` +
            `access_token=${util_1.getEnvironmentVariable('FACEBOOK_APP_ID')}|${util_1.getEnvironmentVariable('FACEBOOK_APP_SECRET')}`;
        request(connectionUrl, (err, verifyRes, body) => {
            try {
                const parsedBody = JSON.parse(body).data;
                if (!parsedBody.is_valid) {
                    res.sendStatus(401);
                }
                else {
                    db_1.isUserRegistered(parsedBody.user_id, (err, isRegistered) => {
                        if (err) {
                            res.sendStatus(500);
                        }
                        else if (!isRegistered) {
                            res.sendStatus(401);
                        }
                        else {
                            req.userId = parsedBody.user_id;
                            next();
                        }
                    });
                }
            }
            catch (e) {
                res.sendStatus(500);
            }
        });
    }
    function getRedirectUri() {
        return process.env.NODE_ENV === 'production'
            ? 'https://aquarium.nebri.us/login-success/'
            : `http://localhost:${port}/login-success/`;
    }
    app.get('/login', (req, res) => {
        res.render('login', {
            facebookAppId: util_1.getEnvironmentVariable('FACEBOOK_APP_ID'),
            redirectUri: getRedirectUri()
        });
    });
    app.get('/login-success', (req, res) => {
        if (req.query.code) {
            const verifyUrl = `https://graph.facebook.com/v2.10/oauth/access_token?` +
                `client_id=${util_1.getEnvironmentVariable('FACEBOOK_APP_ID')}` +
                `&redirect_uri=${getRedirectUri()}` +
                `&client_secret=${util_1.getEnvironmentVariable('FACEBOOK_APP_SECRET')}` +
                `&code=${req.query.code}`;
            request(verifyUrl, (err, verifyRes, body) => {
                try {
                    const parsedBody = JSON.parse(body);
                    res.cookie('accessToken', parsedBody.access_token);
                    res.redirect('/');
                }
                catch (e) {
                    res.sendStatus(500);
                }
            });
        }
        else if (req.query.token) {
            res.cookie('accessToken', req.query.token);
            res.redirect('/');
        }
        else {
            res.redirect('/login');
        }
    });
    app.get('/', (req, res) => {
        res.render('index');
    });
    app.get('/api/user', ensureAuthentication, (req, res) => {
        res.send(db_2.getUser(req.userId));
    });
    app.get('/api/state', ensureAuthentication, (req, res) => {
        db_2.getState(db_2.getDeviceForUserId(req.userId), (err, state) => {
            if (err) {
                res.sendStatus(500);
            }
            else {
                res.send(state);
            }
        });
    });
    app.get('/api/config', ensureAuthentication, (req, res) => {
        messaging_1.getConfig(db_2.getDeviceForUserId(req.userId), (err, config, isConfigUpToDate) => {
            if (err) {
                res.sendStatus(500);
            }
            else {
                res.send({
                    config,
                    isConfigUpToDate
                });
            }
        });
    });
    app.post('/api/config', ensureAuthentication, (req, res) => {
        if (!revalidator_1.validate(req.body, IConfig_1.configValidationSchema).valid) {
            res.sendStatus(400);
            return;
        }
        messaging_1.setConfig(db_2.getDeviceForUserId(req.userId), (req.body), (err) => {
            if (err) {
                res.sendStatus(500);
            }
            else {
                res.send({ result: 'ok' });
            }
        });
    });
    app.get('/api/temperatures', ensureAuthentication, (req, res) => {
        const period = req.query.period;
        if (period !== 'day' && period !== 'month') {
            res.sendStatus(400);
            return;
        }
        db_2.getTemperatureHistory('nebrius-rpi', period, (err, temperatures) => {
            if (err) {
                console.error(err);
                return;
            }
            res.send(temperatures);
        });
    });
    const server = http_1.createServer();
    server.on('request', app);
    server.listen(port, () => {
        console.log(`API server listening on ${server.address().address}:${server.address().port}.`);
        cb(undefined);
    });
}
exports.init = init;
//# sourceMappingURL=endpoints.js.map