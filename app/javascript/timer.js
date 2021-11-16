window.addEventListener('load',() => {

  const timer_bell = new Audio('timer.mp3');
  console.log(timer_bell);
  // 開始停止再開ボタン要素を取得
  const timerButton =document.getElementById("timer-button");
  // ボタンの取得
  const button_element = timerButton.querySelector("a");
  button_element.addEventListener('click',clickButton);

  //リセットボタンの取得
  const resetButton =document.getElementById("reset-button");
  const reset_element = resetButton.querySelector("a");
  reset_element.addEventListener('click',resetTimer);
  
  //起動後のタイマー時間
  let nowTime = 0;

  // ボタンをクリック
  function clickButton(){
    if (button_element.id == "timer-start") {
      button_element.id = "timer-stop";
      button_element.textContent = "停止";
      setTimer();
    }else if(button_element.id == "timer-stop"){
      button_element.id = "timer-restart";
      button_element.textContent = "再開";
      reset_element.href = "#";
    }else{
      button_element.id = "timer-stop";
      button_element.textContent = "停止";
      reset_element.removeAttribute('href');
      setNowTimer();
    }
  }

  // リセットボタンの操作
  function resetTimer(){
    reset_element.removeAttribute('href');
    button_element.id = "timer-start";
    button_element.textContent = "開始";
    document.getElementById("hour").textContent = String(0).padStart(2,"0");
    document.getElementById("min").textContent = String(0).padStart(2,"0");
    document.getElementById("sec").textContent = String(0).padStart(2,"0");
  }

  // 入力フォームの情報からタイマーを起動
  function setTimer(){
    const time  = Number(document.getElementById("set-sec").value) + Number(document.getElementById("set-min").value) * 60 + Number(document.getElementById("set-hour").value) * 3600; // 受け取った値を数値に変換する
    timer(time);
  }

  // タイマーの情報からタイマーを再起動
  function setNowTimer(){
    const time  = nowTime;
    timer(time);
  }

  // タイマー起動、timeに渡した数値で動く
  function timer(time){
    count();

    function count(){
      console.log(time);
      
      let sec = Math.floor(time % 60); // Math.floor 与えられた値を上回らない最小の整数を返す
      let min = Math.floor((time / 60) % 60);
      let hour = Math.floor(time / 60 / 60);
      document.getElementById("hour").textContent = String(hour).padStart(2,"0");
      document.getElementById("min").textContent = String(min).padStart(2,"0");
      document.getElementById("sec").textContent = String(sec).padStart(2,"0");
    
      const timeoutId = setTimeout(count,1000);
      if(time <= 0){
        clearTimeout(timeoutId); //timeoutId 整数が格納されている
        timer_bell.play();
        button_element.id = "timer-start";
        button_element.textContent = "開始";
      }else if(document.getElementById("timer-restart")){
        nowTime = time;
        clearTimeout(timeoutId);
      }
      time --; //if 条件でitmeoutIdを指定してタイマーの起動間隔を短くすることも検討
    }
  }

});