SS.Views.RestaurantShow = Backbone.View.extend({
  template: JST['restaurants/show'],
  tagName: 'ul',

  initialize: function () {
		this.review = new SS.Models.Review();
		this.picture = new SS.Models.Picture();
    this.listenTo(this.review, 'save', this.render);
  },

	events: {
		'click #submit-review': 'submit',
		"change input[type=file]" : "encodeFile",
		'click #submit-photo': 'submitPhoto'
	},

  render: function () {
    var that = this;
    that.$el.html(that.template({
      restaurant: that.model
    }));
    return this;
  },

  encodeFile: function (event) {
      var that = this;
      var file = event.currentTarget.files[0];

      console.log(file);

      var reader = new FileReader();
      reader.onload = function(e) {
          console.log(e.target.result);
          that.picture.set({ photo: e.target.result });
      }
      reader.onerror = function(stuff) {
          console.log("error", stuff)
          console.log (stuff.getMessage())
      }
      reader.readAsDataURL(file);
  },

	submit: function (event) {
		var that = this;
		event.preventDefault();
		var data = $('#review-form').serializeJSON();
		this.review.save(data, {
			success: function () {
				var showForm = new SS.Views.ReviewShow({ model: that.review })
				that.$('#review-section').append(showForm.render().$el);
				that.$('')
			}
		});
	},

});
