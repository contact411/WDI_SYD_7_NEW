var School = Backbone.Model.extend({
  urlRoot: '/schools'

  defaults: {
    name: "Back in the day HS",
    description: "Free burritos..."
  }
});