const _ = require('lodash');

console.log("Iniciando la operación media...");
function countDown(seconds) {
    let counter = seconds;
    const intervalId = setInterval(() => {
      console.log(counter);
      counter--;
      if (counter < 0) {
        clearInterval(intervalId);
        console.log("Terminé la operacion media");
      }
    }, 1000);
  }
  
  countDown(40);

console.log(_.add(2, 3)); // Suma 2 + 3 usando la función "add" de lodash