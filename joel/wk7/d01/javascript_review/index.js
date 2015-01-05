var vito = function(greeting) {
  console.log(greeting + " Vito");
};

vito("Hello");

// No semicolon on the end since it is an assignment
function vito() {

}

//Constructor
var Todo = function(attributes) {
  this.text = attributes.text;
};

var myTodo = new Todo({ test: "Do the dishes"});

console.log(myTodo.text);