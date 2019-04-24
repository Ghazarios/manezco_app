answer = []

$(document).ready ->
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
  
      
@mark = (question_list) ->
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
        texts = $('#' + value + ', ' + '#' + type[key+1]).map(->
          @previousSibling.nodeValue
        )
        char = texts[0].replace(/\s+/g, '').slice(-1)
        content = $('#' + value).val()
        if content.length != 0
          fib.push char + content
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
      if drags.length == array.length
        answer.push array
      else
        unanswered.push location
        answer.push ""
    #else if type.indexOf('word') >= 0 #Capitalized words
    else #True or false, dropdown
      content = $("#"+type).val()
      if (type.indexOf('fib') >= 0)#Single FIB
        string = ($('#' + type).parent().html().replace(/\s+/g, ''))
        location = string.indexOf('<')
        char = string.charAt(location - 1)
        if typeof content == 'undefined' or content == ""
          unanswered.push location
          answer.push ""
        else
          answer.push(char + content)
      else 
        if typeof content == 'undefined' or content == ""
          unanswered.push location
          answer.push ""
        else
          answer.push(content)
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