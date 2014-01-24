SS.Views.RestaurantShow = Backbone.View.extend({
  template: JST['restaurants/show'],
  tagName: 'ul',

  initialize: function () {
		this.review = new SS.Models.Review();
		this.picture = new SS.Models.Picture();
		this.lat = this.model.get('address').get('lat');
		this.lng = this.model.get('address').get('lng');
		this.listenTo(this.review, 'all', this.render);
		this.listenTo(this.model.get('reviews'), 'all', this.render);
		this.listenTo(this.model.get('pictures'), 'all', this.render);
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
		var mapView = new SS.Views.Map({
			model: that.model
		});
		that.$('#map-tab').html(mapView.render().$el);

		var streetView = new SS.Views.StreetView({
			model: that.model
		});
		that.$('#street-tab').html(streetView.render().$el);

		//fix to get maps working with bootstrap tabs
		this.$("a[href='#map-tab']").on('shown.bs.tab', function(){
		  google.maps.event.trigger(mapView.map, 'resize');
			var latlng = new google.maps.LatLng(that.lat, that.lng)
			mapView.map.setCenter(latlng);
		});

		//fix to get street view working with bootstrap tabs
		this.$("a[href='#street-tab']").on('shown.bs.tab', function(){
			streetView.createStreet();
		});

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
				that.model.get('reviews').add(that.review);
			}
		});
	},

	submitPhoto: function (event) {

		//uploading ...

		var that = this;
		event.preventDefault();
		var data = $('#new_photo_form').serializeJSON();
		this.picture.save(data, {
			success: function () {
				that._navToShow(that.model);
				that.model.get('pictures').add(that.picture);
				// popup success
			}
		});
	},

  _navToShow: function (restaurant) {
    Backbone.history.navigate("#restaurant/" + restaurant.id, {trigger: true });
  }

});
