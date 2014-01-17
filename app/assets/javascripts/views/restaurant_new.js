SS.Views.RestaurantNew = Backbone.View.extend({

	template: JST['restaurants/new'],

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurant: that.model
    }));
    return this;
  }

});
