SS.Views.StreetView = Backbone.View.extend({

  template: JST['maps/street'],

	initialize: function() {
		this.lat = this.model.get('address').get('lat');
		this.lng = this.model.get('address').get('lng');
	},

  createStreet: function () {
		var that = this;
    var fenway = new google.maps.LatLng(this.lat, this.lng);
    var mapOptions = {
	    center: fenway,
	    zoom: 14,
			mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var panoramaOptions = {
      position: fenway,
      pov: { heading: 34, pitch: 10 }
    };
    var panorama = new  google.maps.StreetViewPanorama(this.$('#google-street')[0],panoramaOptions);
		panorama.setVisible(true);

		window.setInterval(function() {
		    var pov = panorama.getPov();
		    pov.heading += 0.3;
		    panorama.setPov(pov);
		}, 10);
  },

	render: function() {
    var that = this;
    that.$el.html(that.template({
    }));

    return this;
	},

});