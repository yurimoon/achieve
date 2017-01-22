ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    element_blog = $('#page-top-btn-blog')
    visible_blog = element_blog.is(':visible')
    
    height = $(window).scrollTop()
    if height > 400
      element.fadeIn() if !visible
    else if height > 200
      element_blog.fadeIn() if !visible_blog
      element.fadeOut()
    else
      element_blog.fadeOut()
    
$(document).ready(ready)
$(document).on('page:load', ready)

$(document).on 'click', '#move-page-top', ->
  $('html, body').animate({ scrollTop: 0 }, 'slow')