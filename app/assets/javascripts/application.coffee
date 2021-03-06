# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file. JavaScript code in this file should be added after the last require_* statement.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require tether
#= require oxymoron/underscore
#= require angular
#= require oxymoron/angular-resource
#= require oxymoron/angular-ui-router
#= require oxymoron/ng-notify
#= require materialize-sprockets
#= require angular-cookies
#= require angular-animate
#= require angular-aria
#= require angular-ui
#= require angular-google-maps
#= require angular-simple-logger
#= require angular-material-icons
#= require oxymoron
#= require vars
#= require_self
#= require_tree .


console.log 'loading...'
@app = angular.module('app', ['ui.router', 'oxymoron', 'ngMdIcons', 'ngAnimate', 'uiGmapgoogle-maps']);
@app.config((uiGmapGoogleMapApiProvider) ->
  uiGmapGoogleMapApiProvider.configure
    key: vars.maps_api_key
    v: '3.26'
    libraries: 'weather,geometry,visualization'
)
console.log 'Loaded! '

$(-> $(".button-collapse").sideNav())