SS.Views.Header = Backbone.View.extend({
  template: JST['headers/header'],

	events: {
		'click #search-submit': 'search'
	},

  render: function () {
    var that = this;
    that.$el.html(that.template({
    }));
    return this;
  },

	search: function () {
		var that = this;
		event.preventDefault();
		var searchData = $('#search-form').serializeJSON();
		SS.restaurants.fetch({
			data: searchData,
			success: function () {
					that._navToIndex(searchData);
			}
		});
	},

  _navToIndex: function (query) {
    Backbone.history.navigate("#search=" + query.name, {trigger: true });
  }

});