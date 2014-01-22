SS.Models.Picture = Backbone.Model.extend({
  urlRoot: function () {
    return "/api/pictures/" + this.get('picture')['restaurant_id'] + "/pictures";
  },
})