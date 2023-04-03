console.log("Iniciando la operación más corta...");

let counter = 0;
const interval = setInterval(() => {
  counter++;
  console.log(counter);

  if (counter === 15) {
    clearInterval(interval);
    console.log("Termina la operación más corta.");
  }
}, 1000);
