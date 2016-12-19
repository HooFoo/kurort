(->
  SearchController = ()->

    @noCache = false
    @selectedItem = null
    @searchText = null
    @items = []

    @querySearch = (text) =>
      [{display:text}]

    init = =>
      return

    init();

    return

  window.app
  .controller('SearchCtrl', SearchController)
)()