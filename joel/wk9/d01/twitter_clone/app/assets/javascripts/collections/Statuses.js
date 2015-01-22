var TwitterCloneApp = TwitterCloneApp || {};

TwitterCloneApp.Statuses = Backbone.Collection.extend({
  model: TwitterCloneApp.Status,
  url: '/statuses',
  previousModels: [],

  initialize: function() {
    this.on("sync", this.saveCopy, this);
  },

  saveCopy: function() {
    this.previousModels = [];
    this.each(function(status) {
      this.previousModels.push(status);
    }, this);
  },

  filterByUser: function(username) {
    var matchedStatuses = _.filter(this.previousModels, function(status) {
      return status.get("username") === username;
    });
    this.reset(matchedStatuses);
  }
});