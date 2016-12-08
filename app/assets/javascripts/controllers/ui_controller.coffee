(->
  UIController = ()->

    @heading_text = 'Kurort'
    @currentSlide = 'kek'

    @sendMessage = ()=>
      @stuff

    return

  window.app
  .controller('UI', UIController)
)()