SS.Views.ReviewShow = Backbone.View.extend({
  template: JST['reviews/review_show'],

	tagName: 'li',

  render: function () {
    var content = this.template({ review: this.model });
    this.$el.html(content);
    return this;
  }
});
