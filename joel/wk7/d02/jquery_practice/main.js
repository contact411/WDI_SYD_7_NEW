$(function(){

  $("#todo").on("keypress", function(event) {
    if (event.which === 13 && $(this).val() !== "") {
      var todoText = $(this).val();
      var $todo = $("<p><span>" + todoText + "</span> <input type=\"text\" <button>x</button></p>");
      $("#todo-list").append($todo);
      $todo.find("input").hide();
      $todo.hide().slideDown();
      $(this).val("");
    }
  });

  $("#todo-list").on("keypress", "p input", function(event) {
    if (event.which === 13 && $(this).val() !== "") {
    var editedText = $(this).hide().val();
    $(this).parent().find("span").show().text(editedText);
  }
});

  $("#todo-list").on("dblclick", "p", function() {
    var todoText = $(this).find("span").hide().text();
    $(this).find("input").show().val(todoText);
})

$("#todo-list").on("click", "p button", function() {
  $(this).parent().slideUp(function(){
    $(this).remove();
  });
});



  // $("#click-me").on("click", function() {
  //   $("#put-text-here").text("Hello World");
  //   $(this).fadeout('slow');      // you could also use  .text("CLICKED!");
  // });

});