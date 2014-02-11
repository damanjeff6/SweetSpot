SS.Views.RestaurantsIndex = Backbone.View.extend({
  template: JST['restaurants/index'],
  tagName: 'ul',

	initialize: function (options) {
		this.queryString = options.queryString;
    this.listenTo(SS.restaurants, 'all', this.render);
	},

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurants: that.collection
    }));

    return this;
  },

});