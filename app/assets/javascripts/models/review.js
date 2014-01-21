SS.Models.Review = Backbone.Model.extend({
  urlRoot: function () {
    return "/api/restaurants/" + this.get('review')['restaurant_id'] + "/reviews";
  },
})