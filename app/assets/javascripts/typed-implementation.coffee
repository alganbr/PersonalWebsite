ready = undefined
add_button = undefined

ready = ->
  Typed.new '.type-writer',
    strings: [
      "Hello there!"
      "My name is Algan!"
      "You can learn more about me."
    ]
    callback: ->
      $('#about-me-button').attr "style", "visibility: visible;"
      return
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready