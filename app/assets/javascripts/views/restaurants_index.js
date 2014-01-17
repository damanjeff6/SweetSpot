SS.Views.RestaurantsIndex = Backbone.View.extend({
  template: JST['restaurants/index'],
  tagName: 'ul',

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurants: that.collection
    }));
    return this;
  }

});
