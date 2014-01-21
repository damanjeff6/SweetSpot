SS.Views.RestaurantNew = Backbone.View.extend({

	template: JST['restaurants/new'],

	events: {
		'click #submit-new': 'submit'
	},

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurant: that.model
    }));
    return this;
  },

	submit: function (event) {
		event.preventDefault();
		var data = $('#rest-form').serializeJSON();

    this.collection.create(data['restaurant'], {
			success: function(){
				this._navToShow;
			}
		});
	},

  _navToShow: function (restaurant) {
    Backbone.history.navigate("#restaurant/" + restaurant.id, {trigger: true });
  }

});
