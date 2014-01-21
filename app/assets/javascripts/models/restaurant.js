SS.Models.Restaurant = Backbone.Model.extend({
	parse: function (data) {
		var address = data.address;
		data.address = new SS.Models.Address(address, {parse: true});

		var reviews = data.reviews;
		data.reviews = new SS.Collections.Reviews(reviews, {parse: true});

		return data;
	},

  toJSON: function () {
		var data = this.attributes;//{restaurant: this.attributes};

		return data;
  }
})