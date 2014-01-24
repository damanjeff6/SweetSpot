SS.Views.Map = Backbone.View.extend({

  template: JST['maps/map'],

	initialize: function() {
		this.lat = this.model.get('address').get('lat');
		this.lng = this.model.get('address').get('lng');
	},

	render: function() {
	    var that = this;
	    that.$el.html(that.template({
	    }));

			this.createMap();

	    return this;
	},

  createMap: function(){
		var that = this;
		var mapOptions = {
		  center: new google.maps.LatLng(that.lat, that.lng),
		  zoom: 13,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};

		this.map = new google.maps.Map(this.$('#google-map')[0], mapOptions);

		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(that.lat, that.lng),
			map: this.map,
			title: "Hello World!"
		});

		var info = new google.maps.InfoWindow();
    google.maps.event.addListener(marker, "click", (function(marker) {
      return function(){
        info.setContent(that.model.get('name'));
        info.open(that.map, marker);
      }
    })(marker));
  }

});