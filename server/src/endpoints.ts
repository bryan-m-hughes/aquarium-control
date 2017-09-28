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

import { createServer } from 'http';
import { join } from 'path';
import { json } from 'body-parser';
import * as express from 'express';
import { initialize, session, authenticate, use } from 'passport';
import { BearerStrategy } from 'passport-azure-ad';
import { IConfig } from './common/IConfig';
import { getTemperatureHistory } from './db';



const DEFAULT_PORT = 3001;

export function init(cb: (err: Error | undefined) => void): void {
  const app = express();

  app.use(json());
  app.use(initialize());
  app.use(session());


  const bearerStrategy = new BearerStrategy({
    identityMetadata: 'https://login.microsoftonline.com/common/.well-known/openid-configuration',
    clientID: 'ec1d492e-ba72-44cd-add2-39c09745cb11',
    validateIssuer: false
  }, (token, done) => {
    console.info('verifying the user');
    console.info(token, 'was the token retreived');
    // TODO: https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-devquickstarts-webapi-nodejs#step-18-add-authentication-to-our-rest-api-server
  });

  use(bearerStrategy);

  if (process.env.HOST_CLIENT === 'true') {
    app.use(express.static(join(__dirname, '..', '..', 'client', 'dist')));
  }

  app.get('/api/state', authenticate('oauth-bearer', { session: false }), (req, res) => {
    // TODO
  });

  app.get('/api/config', authenticate('oauth-bearer', { session: false }), (req, res) => {
    // TODO
  });

  app.post('/api/config', authenticate('oauth-bearer', { session: false }), (req, res) => {
    const body: IConfig = req.body;
    console.log(body);
    res.send('ok');
  });

  app.get('/api/temperatures', (req, res, next) => { next(); }, authenticate('oauth-bearer', { session: false }), (req, res) => {
    const period = req.query.period;
    if (period !== 'day' && period !== 'week') {
      res.sendStatus(400);
      return;
    }
    getTemperatureHistory('nebrius-rpi', period, (err, temperatures) => {
      if (err) {
        console.error(err);
        return;
      }
      res.send(temperatures);
    });
  });

  const server = createServer();

  server.on('request', app);

  server.listen(process.env.PORT || DEFAULT_PORT, () => {
    console.log(`API server listening on ${server.address().address}:${server.address().port}.`);
    cb(undefined);
  });
}
