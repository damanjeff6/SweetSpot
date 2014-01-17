SS.Routers.Router = Backbone.Router.extend({
	initialize: function (restaurants, $rootEl) {
		this.$rootEl = $rootEl;
		this.restaurants = restaurants;
	},

	routes: {
		"": "index",
		"restaurant/:id": "show",
	},

	index: function(){
		var that = this;
		var indexView = new SS.Views.RestaurantsIndex({
			collection: that.restaurants
		});
		that._swapView(indexView);
	},

	show: function (id) {
		var showView = new SS.Views.RestaurantShow({
			model: this.restaurants.get(id)
		});

		this._swapView(showView);
	}

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }

})