
"use strict";

let SetAttitude = require('./SetAttitude.js')
let SetRates = require('./SetRates.js')
let SetVelocity = require('./SetVelocity.js')
let SetLEDEffect = require('./SetLEDEffect.js')
let NavigateGlobal = require('./NavigateGlobal.js')
let SetPosition = require('./SetPosition.js')
let GetTelemetry = require('./GetTelemetry.js')
let Navigate = require('./Navigate.js')

module.exports = {
  SetAttitude: SetAttitude,
  SetRates: SetRates,
  SetVelocity: SetVelocity,
  SetLEDEffect: SetLEDEffect,
  NavigateGlobal: NavigateGlobal,
  SetPosition: SetPosition,
  GetTelemetry: GetTelemetry,
  Navigate: Navigate,
};
