# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.edit-word').click ->
    hex = $(this)

    dialog = $('#edit-hex-dialog')
    $('form', dialog).attr('action', hex.data('url'))
    $('input[name="hex[word]"]').val(hex.data('word'))
    dialog.dialog({ modal: true })
