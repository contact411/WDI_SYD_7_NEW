var TimelineView = Backbone.View.extend({
  tagName: "div",
  className: "timeline",
  template: JST['statuses/timeline'],

  initialize: function() {
    this.collection.fetch();
    this.collection.on("sync", this.render, this)
  },

  // OLD CODE
  // render: function() {
  //   this.$el.html(
  //     this.template({
  //       statuses: this.collection.toJSON()
  //     })
  //   );

  render: function() {
    this.collection.each(function(status) {
      new StatusView = StatusView({ model: status });
    });
  }
});
