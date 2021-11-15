window.addEventListener('load',() => {
  timer();
});

let time = 50;

function timer(){
  time --;
  let sec = Math.floor(time % 60); // Math.floor 与えられた値を上回らない最小の整数を返す
  let min = Math.floor(time / 60);
  let hour = Math.floor(min / 60);
  document.getElementById("hour").textContent = String(hour);
  document.getElementById("min").textContent = String(min);
  document.getElementById("sec").textContent = String(sec);
  console.log(sec);
  const timeoutId = setTimeout(timer,1000);
  if(sec <= 0){
    clearTimeout(timeoutId);
  }
}