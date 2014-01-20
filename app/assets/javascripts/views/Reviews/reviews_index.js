SS.Views.ReviewsIndex = Backbone.View.extend({
  template: JST['reviews/reviews_index'],

	tagName: 'ul',

	initialize: function () {
		this.listenTo(this.collection, 'add reset', this.render);
	},

  render: function () {
    var content = this.template();
    this.$('#review-section').html(content);
    this.collection.each(function (restaurant) {
      var view = new GC.Views.GistItem({ model: gist });
      this.$('#gists').append(view.render().$el);
    });
    return this;
  }

});
