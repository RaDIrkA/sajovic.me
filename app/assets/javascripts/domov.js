// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// Function for blink 

$(document).ready(function () { 
	setInterval("$('.blink').fadeOut(150).fadeIn(150);",1500);
});