import { readFile } from 'fs';

console.log("Iniciando la operación más larga...");

readFile('file.txt', (err, data) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log(data.toString());
});

let counter = 0;
const interval = setInterval(() => {
  counter++;
  console.log(counter);

  if (counter === 70) {
    clearInterval(interval);
    console.log("Termina la operación más larga.");
  }
}, 1000);
