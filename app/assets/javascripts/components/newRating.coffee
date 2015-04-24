class @NewRating

  constructor: ->
    $('#rating_game_id').change @reloadGameInfo

  setRating: =>
    $('.fa-star').each (index, element) =>
      $el = $(element)
      $el.click ->
        $el.siblings().removeClass 'filled'
        $el.addClass 'filled'
        $el.prevAll().addClass 'filled'
        rating = $el.data 'rating'
        $('#rating_rating').val(rating)

  getGameID: =>
    $('#rating_game_id').val()

  reloadGameInfo: =>
    $.getJSON('/game_info?game_id=' + @getGameID(), (result) =>
      $('.game-info').html result.content
      @setRating()
    )