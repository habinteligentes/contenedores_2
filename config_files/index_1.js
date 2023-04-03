console.log("Iniciando la operación más larga...");

let counter = 0;
const interval = setInterval(() => {
  counter++;
  console.log(counter);

  if (counter === 70) {
    clearInterval(interval);
    console.log("Termina la operación más larga.");
  }
}, 1000);
