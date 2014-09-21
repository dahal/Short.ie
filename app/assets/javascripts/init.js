Shortie = {}

$(document).ready(function(){
  console.log('Welcome to Short.ie')
  views = new Shortie.Views()
  controller = new Shortie.Controller(views)
  controller.initialize()
})