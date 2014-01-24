SS.Routers.Router = Backbone.Router.extend({
	initialize: function (restaurants, $rootEl) {
		this.$rootEl = $rootEl;
		this.restaurants = restaurants;
	},

	routes: {
		"": "index",
		"restaurant/:id": "show",
		"restaurants/new": "new"
	},

	index: function(){
		var that = this;

		var indexView = new SS.Views.RestaurantsIndex({
			collection: that.restaurants
		});
		that._swapView(indexView);
	},

	show: function (id) {
		var that = this;

		if (typeof that.restaurants.get(id) === 'undefined'){
			var restaurant = new SS.Models.Restaurant();
			restaurant.set({'id':id});
			restaurant.fetch ({
				success: function () {
					var showView = new SS.Views.RestaurantShow({
						model: restaurant,
						collection: that.restaurants
					});
					that._swapView(showView);
				}
			});
		} else {
			var restaurant = that.restaurants.get(id);
			var showView = new SS.Views.RestaurantShow({
				model: restaurant
			});
			that._swapView(showView);
		}
	},

	new: function () {
		var newView = new SS.Views.RestaurantNew({
			model: new SS.Models.Restaurant(),
			collection: this.restaurants
		});

		this._swapView(newView);
	},

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }

})