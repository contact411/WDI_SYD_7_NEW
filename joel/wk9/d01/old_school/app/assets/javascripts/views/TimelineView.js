var TimelineView = Backbone.View.extend({
  tagName: "div",
  className: "timeline",
  template: JST['schools/timeline'],
  
  initialize: function() {
    this.collection.fetch();
    this.collection.on("reset", this.render, this)
  },

  render: function() {
    this.collection.each(function(school) {
      new SchoolView = SchoolView({ model: school });
    });
  }
});