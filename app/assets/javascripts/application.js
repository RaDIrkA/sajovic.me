// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require ckeditor/init
//= require foundation
//= require turbolinks
//= require_tree .





$(function(){ $(document).foundation(); });


// --- funkcija za delay in izpise quotes
 
(function() {  
	var quotes = $(".all_quotes");
	var quoteIndex =  -1;

	function showNextQuote() {
		++quoteIndex;
		quotes.eq(quoteIndex % quotes.length)
			.fadeIn(2000)
			.delay(5000)
			.fadeOut(2000, showNextQuote);
	}

	showNextQuote();
})();
