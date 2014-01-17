SS.Models.Restaurant = Backbone.Model.extend({
	parse: function (data) {
		// console.log(JSON.stringify(data, null, "\t"))
		var address = data.address;
		data.address = new SS.Models.Address(address, {parse: true});
		return data;
	}
})