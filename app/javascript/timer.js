window.addEventListener('load',() => {
  const timerStart = document.getElementById("timer-start");
  timerStart.addEventListener('click',timer);
});

function timer(){
  let time = Number(document.getElementById("set-sec").value) + Number(document.getElementById("set-min").value) * 60 + Number(document.getElementById("set-hour").value) * 3600; // 受け取った値を数値に変換する
  count();

  function count(){
    console.log(time);
    time --;
    let sec = Math.floor(time % 60); // Math.floor 与えられた値を上回らない最小の整数を返す
    let min = Math.floor((time / 60) % 60);
    let hour = Math.floor(time / 60 / 60);
    document.getElementById("hour").textContent = String(hour).padStart(2,"0");
    document.getElementById("min").textContent = String(min).padStart(2,"0");
    document.getElementById("sec").textContent = String(sec).padStart(2,"0");
  
    const timeoutId = setTimeout(count,1000);
    console.log();
    if(time <= 0){
      clearTimeout(timeoutId);
    }
  }
}




