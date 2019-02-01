answer = []
user_answer = []

$(document).ready ->

@home = () ->
      window.location.replace("/welcome/dashboard")

@mark = (question_list) ->
  if check(question_list)
      sessvars.myAnswer = {userAnswer: answer}
      window.location.replace("/result")
  else
      alert ("You haven't answered all questions!")
      answer = []
      user_answer = []

@check = (question_list) ->
  $.each question_list, (key, value) ->
    if value.indexOf('check') >= 0
      selected = []
      $.each $('input[name=' + value + ']:checked'), ->
          selected.push $(this).val()
      answer.push(selected)
    else if value.indexOf('answer') >= 0
      ans5 = $('input[name=' + value + ']:checked').val()
      answer.push(ans5)
    else if value instanceof Array
      fib = []
      fib.push($("#"+value[0]).val())
      fib.push($("#"+value[1]).val())
      answer.push(fib)
    else if value.indexOf('image') >= 0
      selected = $('map[name=' + value + '] area[selected=selected]').attr('title')
      answer.push(selected)
    else if value.indexOf('sortable') >= 0
      array = $('#sortable').children().map(->
        $.trim $(this).text()
      ).get()
      answer.push(array)
    else
      answer.push($("#"+value).val())
    return

  answered_all = true
  $.each answer, (key, index) ->
    location = key
    if index instanceof Array
      if index.length == 0
        console.log("Empty answer at " + location)
        return answered_all = false
      $.each index, (num, value) ->
        if value[num] == "" or value.length == 0
          console.log "Unanswered array at " + location
          return answered_all = false
    else if typeof index == undefined or index == false or index == ""
      console.log "Undefined or empty value at " + location
      return answered_all = false

  return answered_all

@getAnswer = () ->
  sessvars.Answer = {correctAnswer: $('#answers').data('answer')}
  console.log sessvars.Answer.correctAnswer

@change = (number) ->
  if number == 0
    number = 1
  if number == 13
    number = 12
  $('.nav-item').children().removeClass "active"
  $('#change'+number).addClass "active"
  if number == 1
    $('#back').attr 'disabled', 'disabled'
    $('#back').click (event) ->
      event.preventDefault()
      return
  else
    $('#back').removeAttr 'disabled'
  if number == 12
    $('#next').attr 'disabled', 'disabled'
    $('#next').click (event) ->
      event.preventDefault()
      return
  else
    $('#next').removeAttr 'disabled'