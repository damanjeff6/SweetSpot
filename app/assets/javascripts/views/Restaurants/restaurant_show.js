SS.Views.RestaurantShow = Backbone.View.extend({
  template: JST['restaurants/show'],
  tagName: 'ul',

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurant: that.model
    }));
		that.model[reviews].each(function (review) {
			var view = new SS.Views.ReviewShow({ model: review });
			this.$('')
		})
  }

});
