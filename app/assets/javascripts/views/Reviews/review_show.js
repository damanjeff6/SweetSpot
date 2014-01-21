SS.Views.ReviewShow = Backbone.View.extend({
  template: JST['reviews/show'],

  render: function () {
    var that = this;

		that.$el.html(that.template({
			review: this.model
		}));
    return this;
  }

});
