SS.Views.RestaurantNew = Backbone.View.extend({

	template: JST['restaurants/new'],

	events: {
		'click button#submit-new': 'submit'
	},

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurant: that.model
    }));
    return this;
  },

	submit: function (event) {
		var that = this;
		event.preventDefault();
		var data = $('#rest-form').serializeJSON();

    this.collection.create(data['restaurant'], {
			success: function(restaurantData){
				that._navToShow(restaurantData);
			}
		});
	},

  _navToShow: function (restaurant) {
    Backbone.history.navigate("#restaurant/" + restaurant.id, {trigger: true });
  }

});
