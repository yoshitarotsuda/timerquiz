window.addEventListener('load',() => {

  // ✖️ ボタンの取得
  const quizClearButtons = document.getElementsByClassName("quiz-clear");


  // 自動ボタンの取得
  const autoButton = document.getElementById("quiz-auto");
  autoButton.addEventListener('click',clickAutoButton);
  
  // ✖️ボタン全てのイベント設定
  for (var i =0; i < quizClearButtons.length; i++){
    quizClearButtons[i].addEventListener('click',clearQuiz);
  }

  // クイズ削除
  function clearQuiz(e){
    console.log(e.target);
    let quizClear = e.target.parentElement.parentElement.parentElement;
    // let quizClear =  quizClearButtons[i].parentElement;
    console.log(quizClear);
    quizClear.remove();
  }
  
  //自動ボタン切り替え
  function clickAutoButton(){
    if (autoButton.id == "quiz-auto"){
      autoButton.id = "quiz-auto-stop";
      autoButton.textContent = "クイズ停止";
      const answertime  = Number(document.getElementById("answer-auto-time").value);
      const quiztime  = Number(document.getElementById("quiz-auto-time").value);
      autoQuiz(answertime,quiztime);
    }else{
      autoButton.id = "quiz-auto";
      autoButton.textContent = "クイズ自動";
      stopQuiz();
    }
  }

  function autoQuiz(atime,qtime){
    answerIntervalId = setInterval(topAnswerButtonClick,atime * 1000);
    quizClearIntervalId = setInterval(topQuizClearButtonClick,(atime + qtime) * 1000);
  }
  
  function stopQuiz(){
    clearInterval(answerIntervalId);
    clearInterval(quizClearIntervalId);
  }

  function topAnswerButtonClick(){
    let topAnswerButton = document.getElementsByClassName("click-answer")[0];
    topAnswerButton.click();
  }
  function topQuizClearButtonClick(){
    let topQuizClearButton = document.getElementsByClassName("quiz-clear")[0];
    topQuizClearButton.click();
    if(document.getElementsByClassName("quiz-clear")[0] == null){
      stopQuiz();
    };
  }

  
  
  

//   const quizReset = document.getElementById("quiz-reset");
//   quizReset.addEventListener('click',ajaxQuiz);

//   function ajaxQuiz (){
//     const XHR = new XMLHttpRequest();
//     // const token = document.getElementsByName('csrf-token')[0].content;
//     XHR.open("GET","/homes", true);
//     XHR.responseType = 'json';
//     console.log(XHR);
//     XHR.send();
//     XHR.onload = function(e){
//       console.log(XHR);
//       console.log(XHR.status);
//       console.log(XHR.response);
//       console.log();
//     };
//   }

});