SS.Views.RestaurantShow = Backbone.View.extend({
  template: JST['restaurants/show'],
  tagName: 'ul',

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurant: that.model
    }));
    return this;
  }

});
