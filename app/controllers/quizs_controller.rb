class QuizsController < ApplicationController
    def maths
        questions = [["1. What is the formula for the area of a circle?","2PIr^2","2PIr","2PId","5bnD"], ["2. What is the formula for the area of a square?","r^2","2PIr^2","2PIr"], ["3. What is the formula for the area of a triangle?","H*b/2","2PIr^2","2PId"], ["4. What is the formula for the area of a hex?","2PIr^2/6","2PIr","r^2"]]
        
        @question = questions
    end

    def quiz1
        questions = [["What is the formula for the area of a circle?","2PIr^2","2PIr","2PId"], ["What is the formula for the area of a square?","2PIr^2","2PIr","r^2"], ["What is the formula for the area of a triangle?","2PIr^2","H*b/2","2PId"], ["What is the formula for the area of a hex?","2PIr^2/6","2PIr","r^2"]]
        @question = questions
    end
    
    def result
        @title = "Maths"
        
    end

end
