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
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function() {

  $("#owl-example").owlCarousel();

});

$(function(){
    window.prettyPrint && prettyPrint();
}(window.jQuery));

jQuery(document).ready(function($) {

	//Download Link Highlight
	if($("body").data("page")==="frontpage"){
		$(window).scroll(function(){
			var scrolled = $(window).scrollTop();
		    var downloadLink = $("#top-nav").find(".download")
		    if(scrolled >= 420){
		    	downloadLink.addClass("download-on");
		    } else if (scrolled < 420){
		    	downloadLink.removeClass("download-on");
		    }
		})
	}

	$('#myTab a').click(function (e) {
	  e.preventDefault();
	  $(this).tab('show');
	})


});
