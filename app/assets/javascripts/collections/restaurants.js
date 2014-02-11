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
  
  comparator: function(a, b) { 
    var areviews = a.get('reviews');
    var breviews = b.get('reviews');
    
    if (typeof(areviews) === "undefined" || typeof(breviews) === "undefined"){
      return true;
    }
    
    var sum1 = 0;
    areviews.forEach(function(restaurant1) {
      sum1 += restaurant1.get('rating');
    });
    var avg1 = sum1 / areviews.length;

    var sum2 = 0;
    
    breviews.forEach(function(restaurant2) {
      sum2 += restaurant2.get('rating');
    });
    var avg2 = sum2 / breviews.length;
        
    if (avg1 == avg2){ return 0 }
    
    return avg1 < avg2 ? 1 : -1;
  }
})