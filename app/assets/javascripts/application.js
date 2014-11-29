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
//= require turbolinks
//= require_tree .


$(document).ready(function(){

  $('input:checkbox').change(function(event){
    event.preventDefault();
    $(this).parent().siblings().children("input").prop('checked', false); 
    searchTerm = $(this).val();


    $.post('/search', { genre: searchTerm }, function(data){
      console.log(data);
      
      $('#results').html('');
      for (var i = 0; i < data.businesses.length; i++) {
        // console.log(data.businesses[i]);
        var venue = data.businesses[i];          
        var address = venue['location']['display_address'];
        var categories = venue['categories'];
        var rating = venue['rating']

        if (address[2]) {
          var addressBlock = address[0] + '<br>' + address[1] + '<br>' + address[2];
        } else {
          var addressBlock = address[0] + '<br>' + address[1] + '<br> ';
        };

        if (venue['image_url']) {
          venueImg = venue['image_url'];
        } else {
          venueImg = 'http://media.miamimusicweek.com/2012/12/venue-default.jpg';
        };

        $('#results').append("<div class='row'><div class='col-md-11'><div class='venue'><div class='col-md-3'><img class='venue-img' src='" + venueImg + "'></div><div class='col-md-6'><h3 class='content__header--xsmall mar___top--xxsmall--remove'><a class='content__header--small pad__left--xxsmall' href='" + venue['url'] + "' target='_blank'>" + venue['name'] + "</a> " + "</h3><p class='content__header--xxsmall pad__left--xxsmall'>" + addressBlock + "</p> </div></div></div></div>");
      };
    });
  });
});