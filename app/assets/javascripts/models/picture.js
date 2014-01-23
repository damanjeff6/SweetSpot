SS.Models.Picture = Backbone.Model.extend({
  urlRoot: function () {
    return "/api/restaurants/" + this.get('picture')['restaurant_id'] + "/pictures";
  },
})