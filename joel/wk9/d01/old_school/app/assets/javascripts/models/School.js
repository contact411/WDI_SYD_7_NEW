var OldSchoolApp = OldSchoolApp || {};

OldSchoolApp.School = Backbone.Model.extend({
  urlRoot: '/schools',

  defaults: {
    name: "Generic School",
    description: "Free burrito provided for all students..."
  }
});