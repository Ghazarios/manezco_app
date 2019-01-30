class QuizsController < ApplicationController
    
    #Each quiz (method) needs 4 things: 
      #1.Contents, which contains questions with overview and theory 
      #2.Answer, which contains the answers in order
      #3.Question, which contains questions to be shown on the results page without overview and theory
      #4.Title which tells the quiz name

    #The first 3 things above needs to be in an array

  
  
  #*SCIENCE*
  
  def science
      @subjects = ["Physics", "Earth Science", "Chemistry"]     
      @title = "Science"
  end
    
    def physics
        @subjects = ["Sound", "Scientific Model", "Light", "Electricity"]
        @title = "Physics"
    end
  
      def sound
          @title = "Sound"
          @contents = [
              ["OV", "Sounds are all around us. Having a good understanding of how they are created and how they travel from a source
							to your ears is important to help us understand the world. In this chapter, we will look at how sounds are created, how they travel,
							and other things that would help us understand them better."],
              ["TH", "Many forms of energy travel in waves, which have different wavelength, amplitude, and frequency. Light and sound both travel in waves.
							Below is a diagram outlining the properties of waves:", 
                ["img", "https://i.ibb.co/Yj6NPxN/Theory1.png"], 
                "As you can see, Amplitude is the length of the ‘peak’ from the middle point, whereas the Wavelength is the distance between wave ‘peaks’.
								Frequency measures how many ‘peaks’ pass through a point over 1 second, so shorter wavelengths would have more peaks passing through than
								longer waves.",
                ["img", "https://i.ibb.co/pRNFbMc/Theory2.png"],
                "Sound is a form of kinetic energy produced by vibrations, these vibrations cause a chain reaction of more vibrations, carrying the
								soundwaves away from the source – until all the initial energy is gone. If you whack a hammer on a piece of metal,
								the metal is going to vibrate, the air around the metal will also start to vibrate, eventually the air around your ears will vibrate
								and you will perceive the vibrations as noise. This happens very fast, so if you’re close enough, it seems that you hear it straight away.",
                ["li", 
                  "Sound travels in soundwaves, similar to when you drop a stone in a lake and see the ripples forming.",
                  "Sound is just the effect of physical vibrations.",
                  "For Sound to travel anywhere, it needs a medium to transport it, like Water, Air, or even Metal, otherwise there would be nothing vibrating.",
                  "Sound cannot travel in a vacuum (empty space without air), because there is no medium for it to travel through.",
                  "Sound and Light both travel as waves. The soundwaves lose energy over time, eventually stopping"
                ] 
              ],
              ["TF", "Sound cannot travel through a vacuum."],
              ["DL", "Sound is an effect caused by", "Electromagnetism", "Vibrations", "Light"], 
              ["FIB", "Sound requires a m", "@edium", " to transport it, like Air and Water."], 
              ["MC", "Sound is: (Select all that apply)", "Form of Kinetic Energy", "Form of Potential Energy",
							"Form of Electrical Energy", "Wave-like", "Requires a medium", "Unable to travel through space", "Never-ending"],
              ["SC", "What are the three main properties of Waves?", "a. Amplitude, Frequency, Wavelength", "b. Width, Amps, Length", "c. Wavelength,
							Acceleration, Frequent"],
              ["SCP", "Click the wave that has a low Frequency:", "https://image.ibb.co/ekLEaV/picture1.png", "https://image.ibb.co/jzOp9q/picture2.png"],
              ["CLP", "Click the colored line that is measuring the Amplitude:","https://i.ibb.co/87F7HCV/image-map.png", "126,16,139,128", "233,21,402,38", "12,120,540,135"],
              ["CLP", "In the diagram below, click the area that contains the highest sound energy if the drum was being played:", "https://i.ibb.co/F4zvqjM/picture-question.png",
								"117,9,175,237", "365,15,413,240"], 
              ["FIB", "Sound can be r", "@eflected", " and a", "@bsorbed"],
              ["DD", "Order the following from fastest to slowest Sound speed:", "Water", "Air", "Steel"]
          ]
          @answer = ["True", "Vibrations", "edium", ["Form of Kinetic Energy", "Wave-like", "Requires a medium", "Unable to travel through space"],
						"a. Amplitude, Frequency, Wavelength", "Answer 1", "option-1", "option-1", ["eflected", "bsorbed"], ["Steel", "Water", "Air"]]        
          @question = [
              ["TF", "Sound cannot travel through a vacuum. True or False?"],
              ["DL", "Sound is an effect caused by _______."], 
              ["FIB", "Sound requires a M_____ to transport it, like Air and Water."], 
              ["MC", "Sound is (select all that apply):"],
              ["SC", "What are the three main properties of Waves?"],
              ["SCP", "Click the wave that has a low Frequency: "],
              ["CLP", "Click the line that is measuring the Amplitude: "],
              ["PIC", "Click the area that contains the highest sound energy if the drum was being played: "], 
              ["FIB", "Sound can be r______ and a________"],
              ["DD", "Order the following from fastest to slowest Sound speed:"]
          ]
      end

      def scientific_model
          @title = "Scientific Model"
          @contents = [
              ["OV", "Scientific Models are diagrams, illustrations, or other visualisations that help us understand complex scientific processes. These models can be realistic, or they can be exaggerated, depending on how complex the process is. In this quiz, we will look at examples of scientific models that represent the 3 states of matter and answer some questions."],
              ["TH", "Let’s use a Particle Model to demonstrate the differences between ice, water, and water vapour (which are all H2O) *Note, the word Particles is used in the lesson to refer to elements, electrons, and molecules, for simplification*: In reality, this would look like:",
                  ["img", ""]
              ],
              ["TF", "Sound cannot travel through a vacuum."],
              ["DL", "Sound is an effect caused by", "Electromagnetism", "Vibrations", "Light"], 
              ["FIB", "Sound requires a m", "@edium", " to transport it, like Air and Water."], 
              ["MC", "Sound is: (Select all that apply)", "Form of Kinetic Energy", "Form of Potential Energy", "Form of Electrical Energy", "Wave-like", "Requires a medium", "Unable to travel through space", "Never-ending"],
              ["SC", "What are the three main properties of Waves?", "a. Amplitude, Frequency, Wavelength", "b. Width, Amps, Length", "c. Wavelength, Acceleration, Frequent"],
              ["SCP", "Click the wave that has a low Frequency:", "https://image.ibb.co/ekLEaV/picture1.png", "https://image.ibb.co/jzOp9q/picture2.png"],
              ["CLP", "Click the colored line that is measuring the Amplitude:","https://i.ibb.co/87F7HCV/image-map.png", "126,16,139,128", "233,21,402,38", "12,120,540,135"],
              ["CLP", "In the diagram below, click the area that contains the highest sound energy if the drum was being played:", "https://i.ibb.co/F4zvqjM/picture-question.png", "117,9,175,237", "365,15,413,240"], 
              ["FIB", "Sound can be r", "@eflected", " and a", "@bsorbed"],
              ["DD", "Order the following from fastest to slowest Sound speed:", "Water", "Air", "Steel"]
          ]
          @answer = ["True", "Vibrations", "edium", ["Form of Kinetic Energy", "Wave-like", "Requires a medium", "Unable to travel through space"], "a. Amplitude, Frequency, Wavelength", "Answer 1", "option-1", "option-1", ["eflected", "bsorbed"], ["Steel", "Water", "Air"]]        
          @question = [
              ["TF", "Sound cannot travel through a vacuum. True or False?"],
              ["DL", "Sound is an effect caused by _______."], 
              ["FIB", "Sound requires a M_____ to transport it, like Air and Water."], 
              ["MC", "Sound is (select all that apply):"],
              ["SC", "What are the three main properties of Waves?"],
              ["SCP", "Click the wave that has a low Frequency: "],
              ["CLP", "Click the line that is measuring the Amplitude: "],
              ["PIC", "Click the area that contains the highest sound energy if the drum was being played: "], 
              ["FIB", "Sound can be r______ and a________"],
              ["DD", "Order the following from fastest to slowest Sound speed:"]
          ]
      end
  

  
  
  
#*MATHS*
  def maths
    @subjects = ["Year 7", "Year 8", "Year 9"]
    @title = "Maths"
  end
  
    def year7
      @subjects = ["Geometry", "Number and Algebra", "Statistics and Probability"]
      @title = "Year 7"
    end
  
      def geometry
        @subjects = ["Test", "Test2"]
        @title = "Geometry"
      end
      
      def numberandalgebra
        @subjects = ["Index Powers", "Prime numbers 1"]
        @title = "Number & Algebra"
			end
				
				def indexpowers
					@title = "Index Powers"
          @contents = [
              ["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2FMath1.png?alt=media&token=be79edee-c361-4e17-913b-7bf2802b0f06"], 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2F7.1.2.png?alt=media&token=1a8095f7-d3de-4799-8914-4a437788f770"] 
              ], 
							
              ["FIB", "What is 4 to the power of 2?", "@16"],
              ["FIB", "What is 2 to the power of 4?", "@16"], 
              ["FIB", "What is 3 to the power of 3?", "@27"], 
              ["FIB", "What is 5 to the power of 2?", "@25"],
              ["FIB", "What is 2 to the power of 5?", "@32"],
							["TF", "9 written as a power would be 3^2"]
							]
          @answer = ["16", "16", "27", "25", "32", "True"]        
          @question = [
              ["TF", "Sound cannot travel through a vacuum. True or False?"],
              ["DL", "Sound is an effect caused by _______."], 
              ["FIB", "Sound requires a M_____ to transport it, like Air and Water."], 
              ["MC", "Sound is (select all that apply):"],
              ["SC", "What are the three main properties of Waves?"],
              ["SCP", "Click the wave that has a low Frequency: "],
              
         		  ]
				end


#*ENGLISH*


  def english
    @subjects = ["Year 7e", "Year 8e", "Year 9e"]
    @title = "English"
  end
    
    def year7e
      @subjects = ["Punctuation", "Spelling"]
      @title = "Year 7"
    end
  
      
  
  
  
  
 #*HASS*

    def hass

    end
  
  
  

    def result
        @title = "Quiz Results"     
    end
  
    def show
        @score = Score.all
    end

    def mark
        quiz = params[:quiz]
        mark = params[:mark]
        @score = Score.create!(score_params)
    end

    def jquery
      
    end
  
    private 
        def score_params
            params.permit(:quiz, :mark)
        end
end