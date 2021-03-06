window.SS = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('#content');

    var headerView = new SS.Views.Header({
    });

    $('#header-content').html(headerView.render().$el);

		SS.restaurants = new SS.Collections.Restaurants();

		SS.restaurants.fetch({
			success: function () {
				new SS.Routers.Router( SS.restaurants, $rootEl);
				Backbone.history.start();
			}
		});
  }
};

$(document).ready(function(){
  SS.initialize();
});
