#To-do: Randomize order of questions, randomize order of answer options
#Modularize i.e. Make quiz template
#Make quiz and quiz questions model (Need to watch Udemy course) so that admins can insert new questions
#Animations?
#Back and next button: Check if tab 1 is active then disable back button, disabled next if tab 12 active

$(document).ready ->
    
    if sessvars.myObj
        sessvars.Answer.correctAnswer.equals(sessvars.myObj.userAnswer)
        i = 0
        while i < sessvars.Answer.correctAnswer.length
            if $("#user_answer_"+(i+1)).text().indexOf('Unlucky!') > -1
                $('#correct_answer_'+(i+1)).text("Correct Answer: " + sessvars.Answer.correctAnswer[i])
            i++
    sessvars.$.clearMem()

    if $("#mark").length
        mark = $("*").html().match(/correct!/gi).length
        $("#mark").text(mark)
    
user_answer = []
wrong_answer = []

if Array::equals
  console.warn 'Overriding existing Array.prototype.equals. Possible causes: New API defines the method, there\'s a framework conflict or you\'ve got double inclusions in your code.'
# attach the .equals method to Array's prototype to call it on any array

Array::equals = (array) ->
  foo = true;
  # if the other array is a falsy value, return
  if !array
    foo = false
  # compare lengths - can save a lot of time 
  if @length != array.length
    foo = false
  i = 0
  l = @length
  while i < l
    # Check if we have nested arrays
    if @[i] instanceof Array and array[i] instanceof Array
      # recurse into the nested arrays
      # i = index of question
      j = 0
      if @[i].length != array[i].length
        wrong_answer.push(i+1)
        $('#user_answer_'+(i+1)).text(array[i] + " Unlucky!")
        foo = false
      else while j < @[i].length
        if @[i][j] != array[i][j]
            if jQuery.inArray(i+1, "wrong_answer")
                wrong_answer.push(i+1)
            foo=false
            $('#user_answer_'+(i+1)).text(array[i] + " Unlucky!")
        else
            $('#user_answer_'+(i+1)).text(array[i] + " Correct!")
        j++
    else if @[i] != array[i]
      $('#user_answer_'+(i+1)).text(array[i] + " Unlucky!")
      # Warning - two different object instances will never be equal: {x:20} != {x:20}
      wrong_answer.push(i+1)
      foo = false
    else
      $('#user_answer_'+(i+1)).text(array[i] + " Correct!")
    i++
  return foo

# Hide method from for-in loops
Object.defineProperty Array.prototype, 'equals', enumerable: false

@unique = (list) ->
    result = []
    $.each list, (i, e) ->
      if $.inArray(e, result) == -1
        result.push e
      return
    result

@check = () ->
    ans1 = $("#true_false3").val().length > 0
    user_answer.push($("#true_false3").val())

    ans2 = $("#drop_down4").val().length > 0
    user_answer.push($("#drop_down4").val())

    ans3 = $("#fib1").val().length > 0
    user_answer.push($("#fib1").val())
    
    selected = []
    ans4 = false
    $.each $('input[name=\'check6\']:checked'), ->
        selected.push $(this).val()
        if selected.length > 0
            ans4 = true
    user_answer.push(selected)
    
    ans5 = $("input[name='answer7']:checked").val()
    user_answer.push(ans5)

    ans6 = $("input[name='answer8']:checked").val()
    user_answer.push(ans6)

    ans7 = $('map[name=image-map] area[selected=selected]').attr('title')
    user_answer.push(ans7)
    
    ans8 = $('map[name=image-map2] area[selected=selected]').attr('title')
    user_answer.push(ans8)
    
    filled = []
    ans9 = ($("#fib2").val().length > 0) && ($("#fib3").val().length > 0)
    filled.push($("#fib2").val())
    filled.push($("#fib3").val())
    user_answer.push(filled)
    
    array = $('.ui-sortable-handle').map(->
      $.trim $(this).text()
    ).get()
    ans10 = array
    user_answer.push(array)
    
    return (ans1 && ans2 && ans3 && ans4 && ans5 && ans6 && ans7 && ans8 && ans9 && ans10)

@mark = () ->
    if check()
        sessvars.myObj = {userAnswer: user_answer}
        sessvars.Answer = {correctAnswer: $('#answers').data('answer')}
        window.location.replace("/result")
    else
        alert ("You haven't answered all questions!")
        user_answer = []

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

@redo_test = () ->
    window.location.replace("/science/physics/sound")