window.addEventListener('load',() => {
  quizAll();
});

function quizAll(){
  // クイズ要素全ての取得
  var defoultHTML = document.getElementById("quiz-main").innerHTML;
  
  // ✖️ ボタンの取得
  const quizClearButtons = document.getElementsByClassName("quiz-clear");

  // 自動ボタンの取得
  const autoButton = document.getElementById("quiz-auto");
  autoButton.addEventListener('click',clickAutoButton);
  
  // 検索ボタンの取得
  const searchButton = document.getElementById("quiz-search");
  searchButton.addEventListener('click',clickSearchButtun);

  // 元に戻すボタンの取得
  const resetSearchButton = document.getElementById("reset-search");
  resetSearchButton.addEventListener('click',clickResetSearchButton);

  // ✖️ボタン全てのイベント設定
  for (var i =0; i < quizClearButtons.length; i++){
    quizClearButtons[i].addEventListener('click',clearQuiz);
  }

  // クイズ検索
  function clickSearchButtun(){
    category = document.getElementById("quiz-search-category").selectedIndex;
    level = document.getElementById("quiz-search-level").selectedIndex;
    if (category != 0){
      for(var i=1; i <= 20; i++){
        if(i != category){
          let categorySerchQuizzes = document.getElementsByClassName(`quiz-category-${i}`);
          while(categorySerchQuizzes.length){
            categorySerchQuizzes.item(0).remove();
          }
        }
      }
    }
    if (level != 0){
      console.log("test")
      for(var i=1; i <= 5; i++){
        if(i != level){
          let levelSerchQuizzes = document.getElementsByClassName(`quiz-level-${i}`);
          while(levelSerchQuizzes.length){
            levelSerchQuizzes.item(0).remove();
          }
        }
      }
    }
  }
  // クイズ削除
  function clearQuiz(e){
    console.log(e.target);
    let quizClear = e.target.parentElement.parentElement.parentElement;
    // let quizClear =  quizClearButtons[i].parentElement;
    console.log(quizClear);
    quizClear.remove();
  }

  // 元に戻すボタン起動
  function clickResetSearchButton(){
    document.getElementById("quiz-main").innerHTML = defoultHTML;
    quizAll();
  }
  // 自動ボタン切り替え
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

  // 自動回答 自動削除
  function autoQuiz(atime,qtime){
    setTimeout(topAnswerButtonClick,atime * 1000);
    quizClearIntervalId = setInterval(topQuizClearButtonClick,(atime + qtime) * 1000);
    
    function topAnswerButtonClick(){
      let topAnswerButton = document.getElementsByClassName("click-answer")[0];
      topAnswerButton.click();
    }
    function topQuizClearButtonClick(){
      if(document.getElementsByClassName("click-answer")[0] == null || document.getElementsByClassName("quiz-clear")[0] == null){
        stopQuiz();
      }else{
        setTimeout(topAnswerButtonClick,atime * 1000);
        let topQuizClearButton = document.getElementsByClassName("quiz-clear")[0];
        topQuizClearButton.click();
      }
    }
  }
  
  function stopQuiz(){
    clearInterval(quizClearIntervalId);
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
}
