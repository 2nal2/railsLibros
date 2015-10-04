# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
# = require jquery
# = require jquery_ujs
# = require turbolinks
# = require_tree .
# = require bootstrap-sprockets
# = require sync


# $(document).ready ->
#   $('#q').keyup (event) ->
#     document.all['formsearch'].submit()
#     return
#   return

# $(document).ready ->
#   #Funcion que al presionar en el input del formulario de busqueda ejecute el submit del formulario sin
#   #recargar la pagina
#   # $('#q').keyup (event) ->
#   #   $.get $('#formsearch').attr('action'), $('#formsearch').serialize(), null, 'script'
#   #   false
#   #Funcion que al ejecutar el submit no recarge la pagina y realize su trabajo
#   $('#formsearch').submit ->
#     $.get @action, $(this).serialize(), null, 'script'
#     false

 class Sync.Books extends Sync.View

  beforeInsert: ($el) ->
    $el.hide()
    @insert($el)

  afterInsert: ->
    @$el.fadeIn('slow');

  afterRemove: ->
    @$el.fadeOut 'slow', => @remove()
