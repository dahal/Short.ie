Shortie.Url.View = function(){
  console.log('View Loaded')
  this.popOver = function(){
    $('.pop').popover();
  }

  this.getUrl = function(){
    var url = {}
    url['long_url'] = $('#long_url').val()
    var short_url = $('#short_url').val()
    if (short_url !== "") {
      url['short_url'] = short_url
    }
    return url
  }

  this.renderUrl = function(data) {
    var source   = $("#url-template").html();
    var template = Handlebars.compile(source);
    var context  = {longUrl: data.long_url, shortUrl: data.short_url}
    var text     = template(context);
    this.updateDOM(text);
  }

  this.updateDOM = function(url) {
    $('.list-row').append(url)
    $('#long_url').removeClass('error')
    this.throwUrlSuccess()
    this.popOver()
  }

  this.formLongUrl = function(){
    return $('#long_url').val()
  }

  this.throwUrlError = function(){
    var source   = $("#url-error-template").html();
    var template = Handlebars.compile(source);
    this.renderError(template);
  }

  this.throwUrlSuccess = function(){
    var source   = $("#url-success-template").html();
    var template = Handlebars.compile(source);
    this.renderSuccess(template);
  }

  this.renderError = function(template){
    $('.alert').hide()
    $('#long_url').addClass('error')
    $('.navbar').append(template)
  }

  this.renderSuccess = function(template) {
    $('.alert').hide()
    $('.navbar').append(template)
  }
}