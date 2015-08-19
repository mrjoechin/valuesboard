# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('[data-behavior="autocomplete"]').atwho(
    at: "@",
    'data': "/users.json",
    displayTpl: "<li>${full_name} <small>${email}</small></li>",
    insertTpl: "@${full_name}"
  )