SS.Collections.Restaurants = Backbone.Collection.extend({
	model: SS.Models.Restaurant,
	url: '/api/restaurants',
  
  byType: function(type) {
    filtered = this.filter(function(restaurant) {
      return restaurant.get("category").get(type);
    });
    return new SS.Collections.Restaurants(filtered);
  },
  
  sortAttribute: "rating",
  
  sortRestaurants: function (attr) {
     this.sortAttribute = attr;
     this.sort();
  },
  
  comparator: function(restaurant) { 
    if (restaurant.get('reviews') == null){
      return true;
    }
    return -(restaurant.get('reviews').length);
  }
})