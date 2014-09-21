Shortie.Controller = function(view){
  this.view = view
  this.initialize = function(){
    console.log('Controller Loaded')
    this.view.popOver()
  }
}