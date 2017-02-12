UsersController = (Sign, $http)->

  @login = () =>
    @data = User.in()


  @checkUser = () =>
    $http.get(Routes.users_current_path()).then((res) ->
      @data = res.data
      @data.username = 'kek'
    )

  init = () =>
    @checkUser()

  init()

  return

window.app
.controller('Users', ['Sign','$http', UsersController])