SS.Views.Map = Backbone.View.extend({

  template: JST['maps/map'],

	initialize: function() {
		this.lat = -34.397;
		this.lng = 150.644;
	},

	render: function() {
	    var that = this;
	    that.$el.html(that.template({
	    }));

			this.createMap();

	    return this;
	},

  createMap: function(){
		var mapOptions = {
		  center: new google.maps.LatLng(this.lat, this.lng),
		  zoom: 8,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};

		var map = new google.maps.Map(this.$('#google-map')[0], mapOptions);

		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(this.lat, this.lng),
			map: map,
			title: "Hello World!"
		});

  }

});