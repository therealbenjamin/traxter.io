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
//= require gmaps/google
//= require underscore
//= require foundation
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	$("#add_show").on("click", createShow);
	// $("#add_tour").on("click", createTour);
	$("#your_tours").on("click", viewTours);
	$("#create_show_wrapper").hide();
	$("#create_tour_wrapper").hide();
	$("#view_tours_wrapper").hide();
});

function hideDashboardWrapper(){
	$("#dashboard_wrapper").hide();
}

function createShow(){
	hideDashboardWrapper();
	$("#create_show_wrapper").show();
}

function createTour(){
	hideDashboardWrapper();
	$("#create_tour_wrapper").show();
}

function viewTours(){
	hideDashboardWrapper();
	$("#view_tours_wrapper").show();
}