var TimelineView = Backbone.View.extend({
  tagName: "div",
  className: "timeline",

  initialize: function() {
    this.collection.fetch();
    this.collection.on("sync", this.render, this);
  },

  // OLD CODE
  // render: function() {
  //   this.$el.html(
  //     this.template({
  //       statuses: this.collection.toJSON()
  //     })
  //   );
  
  // NEWER OLD CODE
  // render: function() {
  //   this.collection.each(function(status) {
  //     var statusView = new StatusView({ model: status });
  //     this.$el.append(statusView.render().el);
  //   }, this);

  addStatus: function(status) {
    var statusView = new StatusView({ model: status});
    this.$el.append(statusView.render().el);
  }
});
