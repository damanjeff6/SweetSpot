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
		var address = data['restaurant']['address_attributes']

		//todo: addressible URI
		var address_string = address['line1'] + ' ' + address['line2'] + ', ' + address['city'] + ', ' + address['state'] + ' ' + address['zip']
		console.log(address_string);
		$.ajax({
		  url:"http://maps.googleapis.com/maps/api/geocode/json?address="+address_string+"&sensor=false",
		  type: "POST",
		  success:function(res){
		     data.restaurant.address_attributes.lat = res.results[0].geometry.location.lat;
		     data.restaurant.address_attributes.lng = res.results[0].geometry.location.lng;
		 		 that.collection.create(data['restaurant'], {
		 				success: function(restaurantData){
		 					that._navToShow(restaurantData);
		 		  	}
		 		 });
		  }
		});
	},

  _navToShow: function (restaurant) {
    Backbone.history.navigate("#restaurant/" + restaurant.id, {trigger: true });
  }

});
