answer = []

$(document).ready ->
  $(document).on 'click', 'button[type="submit"]', ->
    mark()
  $(document).on 'click', 'ul.nav-tabs a', ->
    $(this).animate {
      backgroundColor: 'transparent'
      color: '#4173a7'
    }, 500
    return
  $(document).on 'click', 'div.tab-pane.active', (event) ->
    if event.button == 0 
      name = $(this).attr('id')
      $('ul.nav-tabs a[href="#'+name+'"]').animate {
        backgroundColor: 'transparent'
        color: '#4173a7'
      }, 500
    return

@mark = () ->
  question_list = $('button[type="submit"]').data("questions")
  if check(question_list)
    sessvars.myAnswer = {userAnswer: answer}
    window.location.replace("/result")
  else
    $('button[type=submit]').effect 'shake'
    $('button[type="submit"]').popover 'show'
    setTimeout (->
      $('button[type="submit"]').popover 'hide'
      return
    ), 3000
    answer = []

@check = (question_list) -> #Check if questions are all answered
  unanswered = []
  $.each question_list, (key, type) ->
    location = key + 1
    if type.indexOf('check') >= 0 #Checkboxes
      selected = []
      $.each $('input[name=' + type + ']:checked'), ->
          selected.push $(this).val()
      if selected.length == 0
        unanswered.push location
        answer.push ""
      else
        answer.push(selected)
    else if type.indexOf('answer') >= 0 #Single choice radio button
      radio = $('input[name=' + type + ']:checked').val()
      if typeof radio == 'undefined'
        unanswered.push location
        answer.push ""
      else
        answer.push(radio)
    else if type instanceof Array #Multiple FIBs
      fib = []
      $.each type, (key, value) ->
        content = $("#"+type[key]).val()
        if content.length != 0
          fib.push content
      if type.length == fib.length
        answer.push(fib)
      else
        unanswered.push location
        answer.push ""
    else if type.indexOf('image') >= 0 #Image-maps
      selected = $('map[name=' + type + '] area[selected=selected]').attr('title')
      if typeof selected == 'undefined'
        unanswered.push location
        answer.push ""
      else 
        answer.push(selected)
    else if type.indexOf('sortable') >= 0 #Sortable
      array = $('#sortable').children().map(->
        $.trim $(this).text()
      ).get()
      answer.push(array) 
    else if type.indexOf('pic') >= 0 #FIB-Pic
      array = []
      input = $('.' + type).find('input')
      $.each input, (key, value) ->
        array.push($(value).val())
      if array.indexOf('') != -1
        unanswered.push location
        answer.push ""
      else
        answer.push array
    else if type.indexOf('drag') >= 0 #Draggable
      array = []
      drags = $('#' + type).nextUntil("li", "div")
      $.each drags, (key, value) ->
        if $(this).data('dropped')
          array.push($(this).data('area'))
      answer.push array
      if drags.length != array.length
        unanswered.push location
    else if type.indexOf('word') >= 0 #Capitalized words
      if $('#' + type).hasClass('multi_words')
        array = []
        $('#' + type + ' span.selected').each (index, multi_words) ->
          string = $(this).text()
          array.push string.charAt(0).toUpperCase() + string.slice(1)
      else
        text = $('#' + type + ' span.selected').text()
        array = text.charAt(0).toUpperCase() + text.slice(1);
      answer.push array
      if array == "" or array.length == 0
        unanswered.push location
    else #True or false, dropdown, single FIB
      if typeof $("#"+type).val() == 'undefined' or $("#"+type).val() == ""
        unanswered.push location
        answer.push ""
      else
        answer.push($("#"+type).val())
  highlightUnanswered(unanswered)
  return unanswered.length == 0

@highlightUnanswered = (unanswered) ->
  for question in unanswered
    $("ul.nav-tabs a:contains(" + question + ")").animate({backgroundColor:'#d9534f', color:'white'}, 250)

@getAnswer = () ->
  sessvars.Answer = {correctAnswer: $('#answers').data('answer')}
  console.log sessvars.Answer.correctAnswer

@change = (number) ->
  $('.nav-item').children().removeClass "active"
  $('#change'+number).addClass "active"