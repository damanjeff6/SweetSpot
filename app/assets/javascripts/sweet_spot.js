window.SS = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('#content');

		var restaurants = new SS.Collections.Restaurants();
		restaurants.fetch({
			success: function () {
				new SS.Routers.Router( restaurants, $rootEl );
				Backbone.history.start();
			}
		});
  }
};

$(document).ready(function(){
  SS.initialize();
});
