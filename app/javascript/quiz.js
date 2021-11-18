// window.addEventListener('load',() => {
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

// });