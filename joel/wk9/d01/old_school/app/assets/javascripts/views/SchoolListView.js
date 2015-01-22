var OldSchoolApp = OldSchoolApp || {};

OldSchoolApp.SchoolListView = Backbone.View.extend({
  tagName: "div",
  className: "timeline",
  
  initialize: function() {
    this.collection.on("add", this.addSchool, this)
  },

  addSchool: function(school) {
    var schoolView = new OldSchoolApp.SchoolView({ model: school });
    this.$el.append(schoolView.render().el);
  },

  render: function(school) {
    this.collection.each(this.addSchool, this);
  }
});