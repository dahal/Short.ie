$(document).ready(function(){
  console.log('Welcome to Short.ie')

  view = new Shortie.Url.View()
  controller = new Shortie.Url.Controller(view)
  controller.initialize()
})