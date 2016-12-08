(->
  IndexController = ()->

    @index = () =>
      console.log('Yoay!')

  window.app
  .controller('IndexCtrl', IndexController, [])
)()