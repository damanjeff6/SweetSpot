SS.Models.Restaurant = Backbone.Model.extend({
	urlRoot: "/api/restaurants/",

	parse: function (data) {
		var address = data.address;
		data.address = new SS.Models.Address(address, {parse: true});

		var reviews = data.reviews;
		data.reviews = new SS.Collections.Reviews(reviews, {parse: true});

		var pictures = data.pictures;
		data.pictures = new SS.Collections.Pictures(pictures, {parse: true});
		return data;
	},

  toJSON: function () {
		var data = this.attributes;//{restaurant: this.attributes};

		return data;
  }
})