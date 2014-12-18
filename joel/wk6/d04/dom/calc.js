document.forms[0].onsubmit = function() {
  var firstNum = parseInt(document.getElementById("number_one").value);
  var secondNum = parseInt(document.getElementById("number_two").value);
  var operationSymbol = document.getElementById("operation").value;
  // console.log(firstNum)
  // console.log(secondNum)
  // console.log(operationSymbol)
  calculate(firstNum, secondNum, operationSymbol);  
}


var calculate = function(firstNum, secondNum, operationSymbol) {
  if (operationSymbol === "add") {
    document.getElementById("answer").innerHTML = (firstNum + secondNum); 
  } else if (operationSymbol === "subtract") {
    document.getElementById("answer").innerHTML = (firstNum - secondNum);
  } else if (operationSymbol === "multiply") {
    document.getElementById("answer").innerHTML = (firstNum * secondNum);
  } else if( operationSymbol === "divide") {
    document.getElementById("answer").innerHTML = (firstNum / secondNum);
  }
}




  // var firstNum = 10;
  // var secondNum = 5;
  // var operationSymbol = "+";


  // alert(calculate(firstNum, secondNum, operationSymbol));








// document.body.onclick = function() {
//   alert("Body clicked, gurl!");
// }

// document.forms[0].onsubmit = function() {
//   var nameField = document.getElementById("name");
//   var emailField = document.getElementById("email");

//   validatesPresence(nameField);
//   validatesPresence(emailField);
// }

// var validatesPresence = function(formField) {
//   if (formField.value.length === 0) {
//     formField.setAttribute("style", "border: 1px solid red;");
//   } else {
//     formField.setAttribute("style", "border: 1px solid black;");
//   }
// }