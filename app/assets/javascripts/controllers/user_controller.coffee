(->
  UsersController = (User,Sign, action)->

    @login = () =>
      Sign.in()

  window.app
  .controller('Users', UsersController, ['User','Sign','action'])
)()