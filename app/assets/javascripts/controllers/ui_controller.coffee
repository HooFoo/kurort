(->
  UIController = ($mdSidenav)->

    @heading_text = 'Kurort'
    @currentSlide = 'kek'
    @isFormComplete = false


    buildToggler = (componentId) ->
      () ->
        $mdSidenav(componentId).toggle();

    @toggleLeft = buildToggler('left');
    @toggleRight = buildToggler('right');

    @checkForm = () =>
      @isFormComplete =
        $('.user-form').find('.md-input-has-value').size() == 2


    init = =>
      @checkForm()

    init();

    return

  window.app
  .controller('UI', ['$mdSidenav',UIController])
)()