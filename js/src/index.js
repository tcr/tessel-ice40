// http://www.latticesemi.com/~/media/LatticeSemi/Documents/ApplicationNotes/IK/iCE40ProgrammingandConfiguration.pdf?document_id=46502

const Promise = require('bluebird');
const tessel = require('tessel');
const fs = require('fs');

// Blink forever.
// tessel.led[2].on();
setInterval(function () {
  // tessel.led[2].toggle();
  // tessel.led[3].toggle();
}, 100);

console.log('Starting...')

const port_b = tessel.port['B'];
const SPI_SCK = port_b.pin[2].output(1);
const SPI_SS_B = port_b.pin[5].output(0);
const CRESET = port_b.pin[6].output(0);
const CDONE = port_b.pin[7].input();
const spi = new port_b.SPI({
  clockSpeed: 1*1000*1000, // 1MHz
  cpol: 1,
  cpha: 1,
  chipSelect: {
    low: function () { },
    high: function () { },
  }
});

const DATA_BUFFER = fs.readFileSync(__dirname + '/compiled.bin');

function delay(ms) {
  return () => new Promise((resolve, reject) => {
    console.log('ms', ms);
    setTimeout(() => {
      console.log('done');
      resolve();
    }, ms);
  });
}

function write(target, value) {
  return new Promise((resolve, reject) => {
    target.write(value, () => {
      resolve();
    });
  });
}

function read(target) {
  return new Promise((resolve, reject) => {
    target.read((err, value) => {
      resolve(value);
    });
  });
}

console.log('starting in 5s, plug in now...');

Promise.resolve()
// .then(delay(7000))
.then(() => {
  console.log('GO!');

  // 2. Drive SPI_SS_B = 0, SPI_SCK = 1
  return write(SPI_SS_B, 0);
})
.then(() => {
  // 1. Drive CRESET_B = 0
  return write(CRESET, 0);
})
.then(() => {
  // 1. Drive CRESET_B = 0
  return write(CRESET, 1);
})
.then(() => {
  // 1. Drive CRESET_B = 0
  return write(CRESET, 0);
})
// 3. Wait a minimum of 200ns
.then(delay(1))
.then(() => {
  console.log('Turning RESET on');
  // 4. Release CRESET_B or drive CRESET_B = 1
  return write(CRESET, 1);
})
// 5. Wait a minimum of 800us to clear
// internal configuration memory
.then(delay(1))
.then(() => {
  return read(CDONE).then(value => {
    console.log('CDONE1:', value);
  })
})
.then(() => {
  // 6. Send configuration image serially
  // on SPI_SI to iCE40, most-significant
  // bit first, on falling edge of SPI_SCK.
  // Send the entire image, without interruption.
  // Ensure that SPI_SCK frequency is between
  // 1 mHz and 25 MHz.
  return new Promise((resolve, reject) => {
    spi.send(DATA_BUFFER, (err) => {
      console.log(err);
      err ? reject(err) : resolve();
    });
  });
})
.then(() => {
  // 7. CDRONE = 1? If no, ERROR.
  return read(CDONE).then(value => {
    console.log('CDONE2:', value);
  })
})
.then(() => {
  // 8. Send a minimum of 49 additional dummy
  // bits and 49 additional SPI_SCK clock cycles
  // (rising-edge to rising-edge) to active the
  // user-I/O pins.
  let dummy = new Buffer(8);
  dummy.fill(0);
  return new Promise((resolve, reject) => {
    spi.send(dummy, (err) => {
      err ? reject(err) : resolve();
    });
  });
})
.then(() => {
  // 9. SPI interface pins available as user-defined
  // I/O pin in application.
  console.log('waiting forever.');
});
