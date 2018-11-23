# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    if $("a#change1").hasClass("active")
        $("a#back").off('click');

    $(".radio").click -> 
        if check()
            $("button").removeAttr("disabled")

    $("a").click ->
        if $("a#change1").hasClass("active")
            $("#back").prop "disabled", true
        else 
            $("#back").prop "disabled", false

        if $("a#change4").hasClass("active")
            $("#next").prop "disabled", true
        else 
            $("#next").prop "disabled", false
    

@check = () ->
    ans1 = $('input[name=answer1]:checked').length > 0
    ans2 = $('input[name=answer2]:checked').length > 0
    ans3 = $('input[name=answer3]:checked').length > 0
    ans4 = $('input[name=answer4]:checked').length > 0
    return (ans1 && ans2 && ans3 && ans4)

@mark = () ->
    if check()
        alert("Are you sure you want to submit?")
        alert("Marking answers. Please wait!")
    else
        alert("You haven't answered all questions! Please answer all")

@change = (number) ->
    $('#change'+(number+2)).removeClass "active"
    $('#change'+(number+1)).removeClass "active"
    $('#change'+(number-1)).removeClass "active"
    $('#change'+(number-2)).removeClass "active"
    $('#change'+number).addClass "active"
    console.log(number)