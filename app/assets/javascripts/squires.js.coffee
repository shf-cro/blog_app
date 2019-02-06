$(document).on 'ready page:load', ->
  UI = new SquireUI(
    replace: 'textarea#seditor'
    buildPath: "/"
    height: 300)

  if typeof $content_body != 'undefined'
    UI.setHTML $content_body
  
  $('form').submit ->
    $('#content_body').val(UI.getHTML()).change()
    return
