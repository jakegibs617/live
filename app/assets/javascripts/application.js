// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
// require foundation/js/foundation/foundation.orbit
// require underscore
// require gmaps/google
//= require_tree .


$(function(){ $(document).foundation(); });

$( ".error-explanation" ).delay(3500).fadeOut("slow");

// function initMap() {
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 17,
//     center: {lat: 42.343560, lng: -71.065273},
//     mapTypeControlOptions: {
//       mapTypeIds: [
//         google.maps.MapTypeId.ROADMAP,
//         google.maps.MapTypeId.SATELLITE
//       ],
//       position: google.maps.ControlPosition.BOTTOM_LEFT
//     }
//   });
//
//   var widgetDiv = document.getElementById('save-widget');
//   map.controls[google.maps.ControlPosition.TOP_LEFT].push(widgetDiv);
//
//   // Append a Save Control to the existing save-widget div.
//   var saveWidget = new google.maps.SaveWidget(widgetDiv, {
//     place: {
//       // ChIJN1t_tDeuEmsRUsoyG83frY4 is the place Id for Google Sydney.
//       placeId: 'ChIJN1t_tDeuEmsRUsoyG83frY4',
//       location: {lat: 42.343560, lng: -71.065273}
//     },
//     attribution: {
//       source: 'Google Maps JavaScript API',
//       webUrl: 'https://developers.google.com/maps/'
//     }
//   });
//
//   var marker = new google.maps.Marker({
//     map: map,
//     position: saveWidget.getPlace().location
//   });
// }




// function initAutocomplete() {
//   var map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: -33.8688, lng: 151.2195},
//     zoom: 13,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//   });
//
//   // Create the search box and link it to the UI element.
//   var input = document.getElementById('pac-input');
//   var searchBox = new google.maps.places.SearchBox(input);
//   map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
//
//   // Bias the SearchBox results towards current map's viewport.
//   map.addListener('bounds_changed', function() {
//     searchBox.setBounds(map.getBounds());
//   });
//
//   var markers = [];
//   // [START region_getplaces]
//   // Listen for the event fired when the user selects a prediction and retrieve
//   // more details for that place.
//   searchBox.addListener('places_changed', function() {
//     var places = searchBox.getPlaces();
//
//     if (places.length == 0) {
//       return;
//     }
//
//     // Clear out the old markers.
//     markers.forEach(function(marker) {
//       marker.setMap(null);
//     });
//     markers = [];
//
//     // For each place, get the icon, name and location.
//     var bounds = new google.maps.LatLngBounds();
//     places.forEach(function(place) {
//       var icon = {
//         url: place.icon,
//         size: new google.maps.Size(71, 71),
//         origin: new google.maps.Point(0, 0),
//         anchor: new google.maps.Point(17, 34),
//         scaledSize: new google.maps.Size(25, 25)
//       };
//
//       // Create a marker for each place.
//       markers.push(new google.maps.Marker({
//         map: map,
//         icon: icon,
//         title: place.name,
//         position: place.geometry.location
//       }));
//
//       if (place.geometry.viewport) {
//         // Only geocodes have viewport.
//         bounds.union(place.geometry.viewport);
//       } else {
//         bounds.extend(place.geometry.location);
//       }
//     });
//     map.fitBounds(bounds);
//   });
//   // [END region_getplaces]
// }
