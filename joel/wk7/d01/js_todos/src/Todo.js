var Todo = function(attributes) {
  this.text = attributes.text;
  this.createdAt = new Date();
}

var todo = new Todo({ text: "Do the dishes" });