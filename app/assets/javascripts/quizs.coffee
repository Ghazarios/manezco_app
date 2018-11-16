# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    $(".radio").click -> 
        if check()
            $("button").removeAttr("disabled")

    

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




### $(document.body).on('click',"button",function (e) {
    alert("Are you sure you want to submit?")
    if(checkAnswers()){
        markAnswers();
    }
    else
    {
        alert("You haven't answered all the questions!")
    }
})

function checkAnswers(){
    ans1 = $("input[name='answer1']");
    ans2 = $("input[name='answer2']");
    ans3 = $("input[name='answer3']");
    ans4 = $("input[name='answer3']");
    submit = false;
    console.log("Checking answers. Please wait!")
    if (ans1.checked && ans2.checked && ans3.checked && ans4.checked){
        submit = true;
    }
    return submit;
}

function markAnswers(){
    console.log("Marking answers. Please wait!")
} ###