/*
  Copyright (C) 2015  Bryan Hughes <bryan@theoreticalideations.com>

  This file is part of Aquarium Control.

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

import dispatcher from 'dispatcher';
import actions from 'actions';

const callbacks = [];
const state = {
  showingEdit: false,
  showingDeleteConfirm: false
};

export function registerCallback(cb) {
  callbacks.push(cb);
}

export function getData() {
  return state;
}

dispatcher.register((payload) => {
  function trigger() {
    callbacks.forEach((cb) => cb());
  }
  switch (payload.actionType) {
    case actions.REQUEST_DELETE:
      state.showingEdit = true;
      trigger();
      break;
    case actions.REQUEST_EDIT:
      state.showingDeleteConfirm = true;
      trigger();
      break;
    default:
      break;
  }
});
