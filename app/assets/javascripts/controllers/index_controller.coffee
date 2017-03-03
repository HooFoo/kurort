IndexController = ()->

  @index = () =>
    console.log('Yoay!')

@app.controller('IndexController', IndexController, [])