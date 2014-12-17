var App = function() {}

App.prototype.start = function() {
  alert("Started!");
}

var app = new App();
app.start();




// you can also do this...  Good luck!

var App = function() {}

App.prototype.boot = function() {
  this.pullInitalData();
}

App.prototype.pullInitalData = function() {
  alert("Pulling data from " + this.dataURL)
}

var puppy = new App();
puppy.dataURL = "http://localhost:3000/puppies";
puppy.boot();