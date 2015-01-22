var OldSchoolApp = OldSchoolApp || {};

OldSchoolApp.AppRouter = Backbone.Router.extend({
  schoolsCollection: new OldSchoolApp.Schools(),

  openPage: function(url) {
    this.navigate(url, { trigger: true });
  },

  routes: {
    "": "home",
    "about": "aboutPage",
    ":name": "filterSchool"
  },

  filterSchool: function(name) {
    var schoolView = new OldSchoolApp.SchoolListView({ collection: this.schoolsCollection });
    $("#container").html(schoolView.el);
    this.schoolsCollection.filterByName(name);
  },    

  home: function() {
    var schoolView = new OldSchoolApp.SchoolListView({ collection: this.schoolsCollection });
    $("#container").html(schoolView.el);
    this.schoolsCollection.fetch();
  },

  aboutPage: function() {
    $("#container").html(JST['about']());
  }
});