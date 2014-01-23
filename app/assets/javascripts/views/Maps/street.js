SS.Views.StreetView = Backbone.View.extend({

  template: JST['maps/street'],

	initialize: function() {
		this.lat = 37.782697;
		this.lng = -122.409741;
	},

  createStreet: function () {
    var fenway = new google.maps.LatLng(this.lat, this.lng);
    var mapOptions = {
	    center: fenway,
	    zoom: 14,
    };
    var panoramaOptions = {
      position: fenway,
      pov: { heading: 34, pitch: 10 }
    };
    var panorama = new  google.maps.StreetViewPanorama(this.$('#google-street')[0],panoramaOptions);
		panorama.setVisible(true);
  },

	render: function() {
	    var that = this;
	    that.$el.html(that.template({
	    }));

			//this.createStreet();
	    return this;
	},

});