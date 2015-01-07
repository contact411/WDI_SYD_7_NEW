var tags;

var renderNavigation = function(tags) {
  var letters = "abcdefghijklmnopqrstuvwxyz".split("");
  var navigation = "";

  _.each(letters, function(letter) {
    navigation += "<a>" + letter + "</a>";
  });

  $("nav").html(navigation);
};


var renderTagList = function(tags) {    
  var listString = "";
    
  _.each(tags, function(tag) {
    listString += "<div class=\"tag\">" + tag + "</div>";
  });

  $("#content").html(listString);
};

var renderGifList = function(search){
  $.getJSON("http://www.gifbase.com/tag/"+ search + "?format=json", function(data){
      var gifs = data.gifs;
      var listGifs = "";
      _.each(gifs, function(gif) {
        listGifs += "<div class=\"gif\"><img src='" + gif.url + "'></div>"; 
      })
      $("#content").html(listGifs);
    }); 
}

$(function() {
  $("nav").on("click", "a", function() {
    var self = this;

    var filteredTags = _.filter(tags, function(tag) {
      return $(self).text() === tag[0];
    });
    renderTagList(filteredTags);
  });

$("#content").on("click", "div", function(){
    var tagName = $(this).text();
    renderGifList(tagName);
});


  $.getJSON("http://www.gifbase.com/js/tags.json", function(data) {
    tags = data;
    renderTagList(data);
    renderNavigation(data);
  });
});