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
					CURRENT_SEARCH = searchData;
					that._navToIndex();
			}
		});
	},

  _navToIndex: function () {
    Backbone.history.navigate("#", {trigger: true });
  }

});