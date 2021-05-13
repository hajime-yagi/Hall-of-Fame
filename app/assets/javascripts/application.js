// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_self
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require toastr
//= require_tree .
$(window).scroll(function() {
  if ($(document).scrollTop() > 150) {
    $('header').addClass('shrink');
  } else {
    $('header').removeClass('shrink');
  }
});
//Unique Footer for Portfolio
//Best for Webkit Browser Only
//To be updated again, soon...


$(function(){

  $('a.show-content').click(function(){
    $(this).find('span').animate({
      height:'+=80px'
    },300)
  }).click(function(){
    $(this).find('span').animate({
      height:'-=80px'
    },200)
  });
  
//end js
});