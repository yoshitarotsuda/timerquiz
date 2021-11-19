window.addEventListener('load',() => {

  // ✖️ ボタンの取得
  quizClearButtons = document.getElementsByClassName("quiz-clear");
  console.log(quizClearButtons);

  for (var i =0; i < quizClearButtons.length; i++){
    quizClearButtons[i].addEventListener('click',clearQuiz);
  }
  
  function clearQuiz(e){
    console.log(e.target);
    let quizClear = e.target.parentElement.parentElement.parentElement;
    // let quizClear =  quizClearButtons[i].parentElement;
    console.log(quizClear);
    quizClear.remove();
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