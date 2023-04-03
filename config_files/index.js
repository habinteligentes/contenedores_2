

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