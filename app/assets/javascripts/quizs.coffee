user_answer = []

$(document).ready ->

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

    ans7 = $('map[name=image-map9] area[selected=selected]').attr('title')
    user_answer.push(ans7)
    
    ans8 = $('map[name=image-map10] area[selected=selected]').attr('title')
    user_answer.push(ans8)
    
    filled = []
    ans9 = ($("#fib2").val().length > 0) && ($("#fib3").val().length > 0)
    filled.push($("#fib2").val())
    filled.push($("#fib3").val())
    user_answer.push(filled)
    
    array = $('ul#sortable').children().map(->
      $.trim $(this).text()
    ).get()
    ans10 = array
    user_answer.push(array)
    
    console.log ans1 , ans2 , ans3 , ans4 , ans5, ans6, ans7 , ans8,ans9, ans10
    return (ans1 && ans2 && ans3 && ans4 && ans5 && ans6 && ans7 && ans8 && ans9 && ans10)

@mark = (question_list) ->
    console.log question_list
    
    if check()
        sessvars.myObj = {userAnswer: user_answer}
        window.location.replace("/result")
    else
        alert ("You haven't answered all questions!")
        user_answer = []

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