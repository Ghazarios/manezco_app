class QuizsController < ApplicationController
    def maths
        questions = [
            ["OV", "Shapes and sizes are all around you! In this tutorial we will be going over your understanding of geometry with quizzes designed to help you grasp important concepts"],
            ["TH", "Area of a Rectangle = Base × Height.
            Area of a Square = Base × Height.
            Area of a Square = s2
            Area of Triangle = ½(Base × Height)
            Area of Parallelogram = Base × Height.
            Area of Trapezoid = ½(Base1 + Base2) × Height.
            Area of Circle = π(radius)2 = πr2"],
            ["MC", "1. What is the formula for the area of a circle?","2PIr^2","π(radius)2","πr2","5bnD"], 
            ["SC", "2. What is the formula for the area of a square?","r^2","2PIr^2","2PIr"], 
            ["SC", "3. What is the formula for the area of a triangle?","H*b/2","2PIr^2","2PId"], 
            ["SC", "4. What is the formula for the area of a hex?","2PIr^2/6","2PIr","r^2"]
        ]
        @title = "Trigonometry"
        @question = questions
    end

    def quiz1
        questions = [["What is the formula for the area of a circle?","2PIr^2","2PIr","2PId"], ["What is the formula for the area of a square?","2PIr^2","2PIr","r^2"], ["What is the formula for the area of a triangle?","2PIr^2","H*b/2","2PId"], ["What is the formula for the area of a hex?","2PIr^2/6","2PIr","r^2"]]
        @question = questions
    end
    
    def result
        @title = "Results"
        
    end

    def science
        @subjects = ["Physics", "Earth Science", "Chemistry"]     
        @title = "Science"
    end

    def physics
        @subjects = ["Sound", "Scientific Model", "Light", "Electricity"]
    end

    def sound
        @question = [
            ["OV", "Sounds are all around us. Having a good understanding of how they are created and how they travel from a source to your ears is important to help us understand the world. In this chapter, we will look at how sounds are created, how they travel, and other things that would help us understand them better."],
            ["TH", "Many forms of energy travel in waves, which have different wavelength, amplitude, and frequency. Light and sound both travel in waves. Below is a diagram outlining the properties of waves:"],
            ["TF", "Sound cannot travel through a vacuum."],
            ["DL", "Sound is an effect caused by", "Electromagnetism", "Vibrations", "Light"], 
            ["FIB", "Sound requires a M", " to transport it, like Air and Water.", "edium"], 
            ["MC", "Sound is:", "Form of Kinetic Energy", "Form of Potential Energy", "Form of Electrical Energy", "Wave-like", "Requires a medium", "Unable to travel through space", "Never-ending"],
            ["SC", "What are the three main properties of Waves?", "a. Amplitude, Frequency, Wavelength", "b. Width, Amps, Length", "c. Wavelength, Acceleration, Frequent"],
            ["SCP", "Click the wave that has a low Frequency:", "https://image.ibb.co/ekLEaV/picture1.png", "https://image.ibb.co/jzOp9q/picture2.png"]
        ]
        @title = "Sound"
    end

    def english

    end

    def hass

    end


end
