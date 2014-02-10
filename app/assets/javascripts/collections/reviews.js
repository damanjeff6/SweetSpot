SS.Collections.Reviews = Backbone.Collection.extend({
	model: SS.Models.Review,
  
  comparator: function(a, b) { 
    return a.get('updated_at') < b.get('updated_at') ? 1 : -1;
  }
})