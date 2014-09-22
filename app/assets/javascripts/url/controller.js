Shortie.Url.Controller = function(view){
  this.view = view
  this.initialize = function(){
    this.view.popOver()
    this.bindListeners()    
  }

  this.bindListeners = function(){
    $('form').on('submit', function(e){
      e.preventDefault()
      this.validateUrl()
    }.bind(this))
  }

  this.validateUrl = function(){
    var urlRegex = /^(ftp|ftps|http|https):\/\/([a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+.*)$/
    if (urlRegex.test(this.view.formLongUrl())) {
      this.createNewUrl()
    } else {
      this.view.throwUrlError()
    }
  }

  this.createNewUrl = function(){
    $.ajax({
      url: '/urls/create',
      type: 'POST',
      data: this.view.getUrl()
    }).done(function(url){
      this.view.renderUrl(url)
    }.bind(this))
  }
}