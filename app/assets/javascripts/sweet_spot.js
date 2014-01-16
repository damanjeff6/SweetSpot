window.SS = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
		SS.restaurants = new SS.Collections.Restaurants();

		SS.restaurants.fetch({
			success: function () {
				new SS.Router({ $rootEl: $('main') });
				Backbone.history.start();
			}
		});
  }
};

$(document).ready(function(){
  SweetSpot.initialize();
});
