#!/usr/bin/env node
var electron = require('electron-bin')
var proc = require('child_process')
var child = proc.spawn(electron, [__dirname + "/main.js"])
