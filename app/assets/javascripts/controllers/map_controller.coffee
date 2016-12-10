(->
  MapController = ($scope,uiGmapGoogleMapApi)->
    @center =
      latitude: 55.75370903771494
      longitude: 37.61981338262558

    @zoom =13

    init = () =>
      uiGmapGoogleMapApi.then((maps) =>
        @gmap = maps
      );



    init()

    return

  window.app
  .controller('MapController', MapController,['$scope','uiGmapGoogleMapApi'])
)()