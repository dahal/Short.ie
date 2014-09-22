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
  }

}