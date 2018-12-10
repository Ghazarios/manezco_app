#To-do:

$(document).ready ->
    $('#back').click (event) ->
        event.preventDefault()
        return
        
    $('map[name=image-map] area').click ->
        $(this).siblings().removeAttr 'selected'
        $(this).attr 'selected', 'selected'
        return
    
    $('map[name=image-map2] area').click ->
        $(this).siblings().removeAttr 'selected'
        $(this).attr 'selected', 'selected'
        return
    
    if sessvars.myObj
        answer.equals(sessvars.myObj.userAnswer)
        i = 0
        while i < sessvars.Answer.correctAnswer.length
            if $("#user_answer_"+(i+1)).text().indexOf('Unlucky!') > -1
                $('#correct_answer_'+(i+1)).text("Correct Answer: " + sessvars.Answer.correctAnswer[i])
            i++
    sessvars.$.clearMem()

    if $("#mark").length
        mark = $("*").html().match(/correct!/gi).length
        $("#mark").text(mark)

answer = ["True", "Vibrations", "edium", ["Form of Kinetic Energy", "Wave-like", "Requires a medium", "Unable to travel through space"], "a. Amplitude, Frequency, Wavelength", "Answer 1", "option-1", "area-1", ["eflected", "bsorbed"]]
user_answer = []
right_answer = []
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
      # i = location of mc question
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
      right_answer.push(i)
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
    ans1 = $("#true_false2").val().length > 0
    user_answer.push($("#true_false2").val())

    ans2 = $("#drop_down3").val().length > 0
    user_answer.push($("#drop_down3").val())

    ans3 = $("#fib1").val().length > 0
    user_answer.push($("#fib1").val())
    
    selected = []
    ans4 = false
    $.each $('input[name=\'check5\']:checked'), ->
        selected.push $(this).val()
        if selected.length > 0
            ans4 = true
    user_answer.push(selected)
    
    ans5 = $("input[name='answer6']:checked").val()
    user_answer.push(ans5)

    ans6 = $("input[name='answer7']:checked").val()
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
    
    return (ans1 && ans2 && ans3 && ans4 && ans5 && ans6 && ans7 && ans8 && ans9)

@mark = () ->
    if check()
        sessvars.myObj = {userAnswer: user_answer}
        sessvars.Answer = {correctAnswer: answer}
        window.location.replace("/result")
    else
        alert ("You haven't answered all questions!")
        user_answer = []

@change = (number) ->
    if number == 0
      number = 1
    if number == 12
      number = 11
    $('.nav-item').children().removeClass "active"
    $('#change'+number).addClass "active"
    if number == 1
      $('#back').attr 'disabled', 'disabled'
      $('#back').click (event) ->
        event.preventDefault()
        return
    else
      $('#back').removeAttr 'disabled'
    if number == 11
      $('#next').attr 'disabled', 'disabled'
      $('#next').click (event) ->
        event.preventDefault()
        return
    else
      $('#next').removeAttr 'disabled'
    console.log(number)

@redo_test = () ->
    window.location.replace("/science/physics/sound")