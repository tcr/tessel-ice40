'use strict';

// http://www.latticesemi.com/~/media/LatticeSemi/Documents/ApplicationNotes/IK/iCE40ProgrammingandConfiguration.pdf?document_id=46502

var Promise = require('bluebird');
var tessel = require('tessel');
var fs = require('fs');

// Blink forever.
// tessel.led[2].on();
setInterval(function () {
  // tessel.led[2].toggle();
  // tessel.led[3].toggle();
}, 100);

console.log('Starting...');

var port_b = tessel.port['B'];
var SPI_SCK = port_b.pin[2].output(1);
var SPI_SS_B = port_b.pin[5].output(0);
var CRESET = port_b.pin[6].output(0);
var CDONE = port_b.pin[7].input();
var spi = new port_b.SPI({
  clockSpeed: 1 * 1000 * 1000, // 1MHz
  cpol: 1,
  cpha: 1,
  chipSelect: {
    low: function low() {},
    high: function high() {}
  }
});

var DATA_BUFFER = fs.readFileSync(__dirname + '/compiled.bin');

function delay(ms) {
  return function () {
    return new Promise(function (resolve, reject) {
      console.log('ms', ms);
      setTimeout(function () {
        console.log('done');
        resolve();
      }, ms);
    });
  };
}

function write(target, value) {
  return new Promise(function (resolve, reject) {
    target.write(value, function () {
      resolve();
    });
  });
}

function read(target) {
  return new Promise(function (resolve, reject) {
    target.read(function (err, value) {
      resolve(value);
    });
  });
}

console.log('starting in 5s, plug in now...');

Promise.resolve()
// .then(delay(7000))
.then(function () {
  console.log('GO!');

  // 2. Drive SPI_SS_B = 0, SPI_SCK = 1
  return write(SPI_SS_B, 0);
}).then(function () {
  // 1. Drive CRESET_B = 0
  return write(CRESET, 0);
}).then(function () {
  // 1. Drive CRESET_B = 0
  return write(CRESET, 1);
}).then(function () {
  // 1. Drive CRESET_B = 0
  return write(CRESET, 0);
})
// 3. Wait a minimum of 200ns
.then(delay(1)).then(function () {
  console.log('Turning RESET on');
  // 4. Release CRESET_B or drive CRESET_B = 1
  return write(CRESET, 1);
})
// 5. Wait a minimum of 800us to clear
// internal configuration memory
.then(delay(1)).then(function () {
  return read(CDONE).then(function (value) {
    console.log('CDONE1:', value);
  });
}).then(function () {
  // 6. Send configuration image serially
  // on SPI_SI to iCE40, most-significant
  // bit first, on falling edge of SPI_SCK.
  // Send the entire image, without interruption.
  // Ensure that SPI_SCK frequency is between
  // 1 mHz and 25 MHz.
  return new Promise(function (resolve, reject) {
    spi.send(DATA_BUFFER, function (err) {
      console.log(err);
      err ? reject(err) : resolve();
    });
  });
}).then(function () {
  // 7. CDRONE = 1? If no, ERROR.
  return read(CDONE).then(function (value) {
    console.log('CDONE2:', value);
  });
}).then(function () {
  // 8. Send a minimum of 49 additional dummy
  // bits and 49 additional SPI_SCK clock cycles
  // (rising-edge to rising-edge) to active the
  // user-I/O pins.
  var dummy = new Buffer(8);
  dummy.fill(0);
  return new Promise(function (resolve, reject) {
    spi.send(dummy, function (err) {
      err ? reject(err) : resolve();
    });
  });
}).then(function () {
  // 9. SPI interface pins available as user-defined
  // I/O pin in application.
  console.log('waiting forever.');
});
