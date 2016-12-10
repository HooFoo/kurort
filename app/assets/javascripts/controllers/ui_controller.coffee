(->
  UIController = ($scope, $timeout, $mdSidenav)->

    @heading_text = 'Kurort'
    @currentSlide = 'kek'

    buildToggler = (componentId) ->
      () ->
        $mdSidenav(componentId).toggle();

    @toggleLeft = buildToggler('left');
    @toggleRight = buildToggler('right');

    return

  window.app
  .controller('UI', UIController)
)()