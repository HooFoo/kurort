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

@app
.controller('SearchController', SearchController)