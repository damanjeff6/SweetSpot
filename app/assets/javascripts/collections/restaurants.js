SS.Collections.Restaurants = Backbone.Collection.extend({
	model: SS.Models.Restaurant,
	url: '/api/restaurants',
  
  byType: function(type) {
    filtered = this.filter(function(restaurant) {
      return restaurant.get("category").get(type);
    });
    return new SS.Collections.Restaurants(filtered);
  },
  
  comparator: function(restaurant) {
    return restaurant.get('name');
  }
})