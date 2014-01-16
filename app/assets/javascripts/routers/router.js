SS.Routers.Router = Backbone.Router.extend({
	initialize: function (options) {
		this.$rootEl = options.$rootEl;
	},

	routes: {
		"": "index"
	},

	index: function(){
		var view = new SS.Views.RestaurantsIndex({
			collection: SS.restaurants
		});
		this._swapView(view);
	},

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }

})