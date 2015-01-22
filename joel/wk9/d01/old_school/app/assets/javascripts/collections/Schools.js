var OldSchoolApp = OldSchoolApp || {};

OldSchoolApp.Schools = Backbone.Collection.extend({
  model: OldSchoolApp.School,
  url: '/schools',

  filterByName: function(name) {
    var matchedSchools = this.filter(function(school) {
      return school.get("name") === name;
    });
    this.reset(matchedSchools);
  }
});