var StatusView = Backbone.View.extend({
  tagName: 'div',
  className: 'status',
  template: JST['statuses/status'],

  initialize: function() {
    this.model.on("change", this.render, this);
  },

  render: function() {
    this.$el.html(
      this.template(
        this.model.toJSON()
      )
    );
    return this;
  }
});