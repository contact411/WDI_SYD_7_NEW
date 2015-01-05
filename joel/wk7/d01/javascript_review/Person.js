var Person = function(attributes) {
  this.name = attributes.name;
  this.age = attributes.age;
  this.gender = attributes.gender;
}

Person.prototype.speak = function() {
  console.log(this.name + " says 'Hello World'");
}

Person.prototype.walk = functon() {
  console.log(this.name + " took one step");
}

var joel = new Person({
  name: "Joel Hampton",
  age: 38,
  gender: "Male"
});
joel.speak(); // Joel says "Hello World"
joel.walk(); // Joel took one step