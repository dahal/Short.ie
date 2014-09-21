Shortie.Url.Controller = function(view){
  this.view = view
  this.initialize = function(){
    console.log('Controller Loaded')
    this.view.popOver()
    this.bindListeners()    
  }

  this.bindListeners = function(){
    console.log('bind listener')
    $('form').on('submit', function(e){
      e.preventDefault()
      this.createNewUrl()
    }.bind(this))
  }

  this.createNewUrl = function(){
    console.log('Create new Url')
  }
}