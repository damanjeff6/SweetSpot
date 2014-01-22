SS.Views.Header = Backbone.View.extend({
  template: JST['headers/header'],

  render: function () {
    var that = this;
    that.$el.html(that.template({
    }));
    return this;
  }

});
