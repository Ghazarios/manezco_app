class QuizsController < ApplicationController
    
    #Each quiz (method) needs 4 things: 
      #1.Contents, which contains questions with overview and theory 
      #2.Answer, which contains the answers in order
      #3.Question, which contains questions to be shown on the results page without overview and theory
      #4.Title which tells the quiz name
    #The first 3 things above needs to be in an array


  

    def show #Show only current_user's scores
        @score = Score.where(user: current_user)
    end
  
  
    def mark 
      quiz = params[:quiz]
      mark = params[:mark]
      @score = Score.new(score_params)
      @score.user = current_user
      @score.save
    end
    
  
     def result
       @title = "Quiz Results"     
     end
  
  
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
        @subjects = ["Index Powers", "Prime numbers 1", "Prime Factors 1"]
        @title = "Number & Algebra"
			end
				
				def indexpowers
					@title = "Index Powers"
          @contents = [
              ["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2FMath1.png?alt=media&token=be79edee-c361-4e17-913b-7bf2802b0f06"], 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2F7.1.2.png?alt=media&token=1a8095f7-d3de-4799-8914-4a437788f770"] 
              ], 
							
              ["FIB", "What is 4[sup]2[/sup]?", "@16"],
              ["FIB", "What is 2[sup]4[/sup]?", "@16"],
							["SC", "36 written as a power would be:", "a. 3[sup]3[/sup]", "b. 4[sup]3[/sup]", "c. 6[sup]2[/sup]"],
							["SC", "49 written as a power would be:", "a. 3[sup]4[/sup]", "b. 6[sup]3[/sup]", "c. 7[sup]2[/sup]"],
              ["FIB", "What is 3 to the power of 3?", "@27"], 
              ["FIB", "What is 5[sup]2[/sup]?", "@25"],
              ["FIB", "What is 2[sup]5[/sup]?", "@32"],
							["TF", "9 written as a power would be 3[sup]2[/sup]"],
							["SC", "121 written as a power would be:", "a. 10[sup]9[/sup]", "b. 11[sup]2[/sup]", "c. 11[sup]11[/sup]"],
							["SC", "8 written as a power would be:", "a. 8[sup]2[/sup]", "b. 4[sup]2[/sup]", "c. 2[sup]3[/sup]"],
							["SC", "125 written as a power would be:", "a. 5[sup]5[/sup]", "b. 5[sup]3[/sup]", "c. 25[sup]2[/sup]"],
							["MC", "64 can be written as a power in a few different ways. Select all that apply:", "3[sup]4[/sup]", "4[sup]3[/sup]", "8[sup]8[/sup]", "2[sup]6[/sup]", "8[sup]2[/sup]"],
							["FIB", "3[sup]4[/sup] is:", "@81"]
							]
          @answer = ["16", "16", "c. 6<sup>2</sup>", "c. 7<sup>2</sup>", "27", "25", "32", "True", "b. 11<sup>2</sup>", "c. 2<sup>3</sup>", "b. 5<sup>3</sup>", ["4<sup>3</sup>", "2<sup>6</sup>", "8<sup>2</sup>"], "81"]        
          @question = [
              ["FIB", "What is 4<sup>2</sup>?"],
							["FIB", "What is 2<sup>4</sup>?"],
							["SC", "36 written as a power would be:"],
							["SC", "49 written as a power would be:"],
							["FIB", "What is 3 to the power of 3?"],
							["FIB", "What is 5<sup>2</sup>?"],
							["FIB", "What is 2<sup>5</sup>?"],
							["TF", "9 written as a power would be 3<sup>2</sup>"],
							["SC", "121 written as a power would be:"],
							["SC", "8 written as a power would be:"],
							["SC", "125 written as a power would be:"],	
							["MC", "64 can be written as a power in a few different ways. Select all that apply:"],
							["FIB", "3<sup>4</sup> is:"]              
         		  ]
				end
	
					def primenumbers1
					@title = "Prime Numbers 1"
          @contents = [
              ["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2F7.2.1.png?alt=media&token=902f045d-cd5c-4674-a5b1-663d5cf1470f"],
              ], 
							["TH",
								["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2F7.2.2.png?alt=media&token=6ad4b7b5-f942-431e-851d-ebaeb485fd45"]
							],
							
              ["TF", "17 is a Prime Number"],
              ["TF", "23 isn't a Prime Number"],
							["SC", "27 isn't a Prime Number because it can be divided by:", "a. 3 and 9", "b. 3 and 6", "c. 9 and 2"],
							["DL", "29 is", "not a Prime Number", "is a Prime Number"],
              ["TF", "31 is a Prime Number"], 
              ["SC", "39 is:", "a. Not a Prime Number as it can be divided by 30 and 9", "b. Is a Prime Number", "c. Is not a Prime Number because it can be
							divided by 3 and 13"],
              ["SC", "47 is:", "a. Not a Prime Number as it can be divided by 7 and 3", "b. Is a Prime Number", "c. Is not a Prime Number because it can be
							divided by 12 and 6"],
							["SC", "51 is:", "a. Not a Prime Number as it can be divided by 3 and 17", "b. Is a Prime Number", "c. Is not a Prime Number because it can be
							divided by 12 and 6"],
							["TF", "61 is a Prime Number"],
							["MC", "63 isn't a Prime Number as it can be divided by:", "3", "5", "7", "9", "11", "17", "21"]
							]
          @answer = ["True", "False", "a. 3 and 9", "is a Prime Number", "True", "c. Is not a Prime Number because it can be
							divided by 3 and 13", "b. Is a Prime Number", "a. Not a Prime Number as it can be divided by 3 and 17", "True", ["3", "7", "9", "21"] ]        
          @question = [
              ["TF", "17 is a Prime Number"],
              ["TF", "23 isn't a Prime Number"],
							["SC", "27 isn't a Prime Number because it can be divided by:"],
							["DL", "29 is"],
              ["TF", "31 is a Prime Number"], 
              ["SC", "39 is:"],
              ["SC", "47 is:"],
							["SC", "51 is:"],
							["TF", "61 is a Prime Number"],
							["MC", "63 isn't a Prime Number as it can be divided by:"]
         		  ]
				end
	

				def primefactors1
					@title = "Prime Factors 1"
          @contents = [
              ["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2F7.3.1.png?alt=media&token=3f477da7-1716-447b-825a-de9c7ef2bbfe"],
              ], 
							["TH",
								["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/maths%2F7%2Fnumber%20and%20algebra%2F7.3.2.png?alt=media&token=7853e92a-25b6-4d45-9ba9-cb8173272555"]
							],
						
							["OV", "For the following questions; represent the whole numbers as products of powers of prime numbers:"],
							
              ["TF", "8 as a prime factor would be 4[sup]2[/sup]"],
              ["SC", "12 as a prime factor would be:", "2[sup]2[/sup] x 3", "3[sup]2[/sup] x 3", "4[sup]2[/sup] x 2"],
							["SC", "16 as a prime factor is:", "2[sup]2[/sup] x 3", "3[sup]3[/sup]", "4[sup]2[/sup]"],
							["DL", "28 as a prime factor would be", "2^2 x 2", "7^4", "2^2 x 7"],
              ["TF", "The prime factor of 38 is 2x19"], 
              ["FIB", "42 as a prime factor is:", "@2", "x", "@3", "x 7"],
              ["FIB", "61 as a prime factor is:", "@61"],
							["FIB", "68 as a prime factor is", "@2", "[sup]2[/sup]", "x", "@17"],
							["TF", "100 as a prime factor is 5[sup]10[/sup] x 2"],
							["DL", "101 as a prime factor is", "50x2", "101", "100+1", "8x4"],
							["FIB", "156 as a prime factor is 2[sup]2[/sup] x", "@3", "x", "@13"],
							["SC", "The prime factors of 750 would be:", "2 x 5 x 5[sup]3[/sup]", "4 x 3 x 5[sup]2[/sup]", "2 x 3 x 5[sup]3[/sup]"],
							["SC", "The prime factors of 1200 would be:", "2[sup]4[/sup] x 5[sup]3[/sup]", "4 x 3 x 5[sup]2[/sup]",
							"2[sup]3[/sup] x 5[sup]3[/sup]"],
							["FIB", "The prime factor of 343 is", "@7", "[sup]3[/sup]"],
							["MC", "Click the prime factors that multiply with each other to form 6000", "2[sup]4[/sup]", "3[sup]4[/sup]",
							"3", "5[sup]3[/sup]", "6[sup]3[/sup]"],
							["SC", "*Bonus question* What is the Sieve of Erastosthenes?", "a.	It is a formula to find Prime Numbers", "b.	It is an ancient tool to draw numbers", 
							"c.	It is an  algorithm to find Prime Numbers using division rule-outs up to a specific integer",
							"d.	It is an  ancient  algorithm to find Prime Numbers that uses abacus"]
							]
          @answer = ["False", "2<sup>2</sup> x 3", "4<sup>2</sup>", "2^2 x 7", "True", ["2", "3"],"61", ["2", "17"],
										"False", "101",["3", "13"], "2 x 3 x 5<sup>3</sup>", "2<sup>3</sup> x 5<sup>3</sup>", "7", ["2<sup>4</sup>", "3", "5<sup>3</sup>"]]        
          @question = [
              ["TF", "8 as a prime factor would be 4<sup>2</sup>"],
              ["SC", "12 as a prime factor would be:"],
							["SC", "16 as a prime factor is:"],
							["DL", "28 as a prime factor would be"],
              ["TF", "The prime factor of 38 is 2x19"], 
              ["FIB", "42 as a prime factor is:"],
              ["FIB", "61 as a prime factor is:"],
							["FIB", "68 as a prime factor is"],
							["TF", "100 as a prime factor is 5<sup>10</sup> x 2"],
							["DL", "101 as a prime factor is"],
							["FIB", "156 as a prime factor is 2<sup>2</sup> x"],
							["SC", "The prime factors of 750 would be:"],
							["SC", "The prime factors of 1200 would be:"],
							["FIB", "The prime factor of 343 is"],
							["MC", "Click the prime factors that multiply with each other to form 6000"],
							["SC", "What is the Sieve of Erastosthenes?"]
							]
         							
				end
#*ENGLISH*


  def english
    @subjects = ["Year 7 English", "Year 8 English", "Year 9 English"]
    @title = "English"
  end
    
    def year7english
      @subjects = ["Punctuation", "Grammar", "Language Devices", "Writing", "Reading"]
      @title = "Year 7"
    end
	
			def punctuation
				@subjects = ["Basic Punctuation"]
				@title = "Punctuation"
			end
				
				def basicpunctuation
					@title = "Basic Punctuation"
          @contents = [
              ["OV", "Capital letters for beginning sentences:
							The start of a sentence needs a capital letter so the reader knows a new
							sentence has begun.", "Practice 1: Correct the following sentences on the next few pages (make sure to add full-stops!):"],
							
              ["FIB", "the wind blew through the open window.", "@The wind blew through the open window."],
              ["SC", "Which sentence is correct?", "Water pushed its way across the land.", "water pushed its way across the land.", "water Pushed its way across the land."],
							["FIB", "sunshine warmed the old man's room.", "@Sunshine warmed the old man's room."],
							["FIB", "my husband cooked a big Sunday lunch.", "@My husband cooked a big Sunday lunch."],
              ["SC", "Which sentence is correct?", "earthquakes shake Japan regularly.", "Earthquakes shake japan regularly.", "Earthquakes shake Japan regularly."],
						
              ["TH",
								["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/english%2F7%2Fpunctuation%2F7.1.1.png?alt=media&token=0d6b7d4e-18ba-4b31-a1f2-97f2ead4d7a9"]
							],
							["OV", "Practice 2: Correct the following sentences with proper grammar and punctuation:"],
							
              ["FIB", "i met tom on the weekend.", "@I met Tom on the weekend."],
              ["DL", "The following sentence is correct:", "my dad drives a Ford, but I like Holden.", "My dad drives a ford, but I like Holden.",
							"My dad drives a ford, but I like holden.", "My dad drives a Ford, but I like Holden."],
							["FIB", "jessica thinks yamaha make the best motorbikes.", "@Jessica thinks Yamaha make the best motorbikes."],
							["SC", "Which sentence is correct?", "On the summer holiday, I visited Harry in Brisbane.", "on the summer holiday, I visited Harry in brisbane.", "On the Summer Holiday, I visited Harry in Brisbane."],
              ["FIB", "Last wednesday, I went swimming at bondi beach with my friends nick and bill.", "@Last Wednesday, I went swimming at Bondi Beach with my friends Nick and Bill."],
							
							["OV", "The following sentences have capital letter errors.
							Practice 3: Correct each of the following sentences:"],
							["FIB", "monday is my first day at a new school in perth.", "@Monday is my first day at a new school in Perth."],
              ["FIB", "I really like annie. I hope she comes to bill's party on friday.", "@I really like Annie. I hope she comes to Bill's party on Friday."],
							["FIB", "where are you going for the summer holiday in december?", "@Where are you going for the summer holiday in December?"],
							["TF", "The following sentence is correct: 'Tim rides a Honda, but I ride a kawasaki.'"],
              ["MC", "Which words should be capitalised in the following sentence: 'the traffic was really bad on the albany highway on thursday.'",
							"the", "traffic", "was", "really", "bad", "on", "the", "albany", "highway", "on","thursday"]
							
							]
          @answer = ["The wind blew through the open window.", "Water pushed its way across the land.", "Sunshine warmed the old man's room.", "My husband cooked a big Sunday lunch.",
					"Earthquakes shake Japan regularly.", "I met Tom on the weekend.", "My dad drives a Ford, but I like Holden.", "Jessica thinks Yamaha make the best motorbikes.",
					"On the summer holiday, I visited Harry in Brisbane.", "Last Wednesday, I went swimming at Bondi Beach with my friends Nick and Bill.", "Monday is my first day at a new school in Perth.",
					"I really like Annie. I hope she comes to Bill's party on Friday.", "Where are you going for the summer holiday in December?", "False", ["the", "albany", "highway", "thursday"] ]        
          @question = [
              ["FIB", "the wind blew through the open window."],
              ["SC", "Which sentence is correct?"],
							["FIB", "sunshine warmed the old man's room."],
							["FIB", "my husband cooked a big Sunday lunch."],
							["SC", "Which sentence is correct?"],
							["FIB", "i met tom on the weekend."],
							["DL", "The following sentence is correct:"],
							["FIB", "jessica thinks yamaha make the best motorbikes."],
							["SC", "Which sentence is correct?"],
							["FIB", "Last wednesday, I went swimming at bondi beach with my friends nick and bill."],
							["FIB", "monday is my first day at a new school in perth."],
							["FIB", "I really like annie. I hope she comes to bill's party on friday."],
							["FIB", "where are you going for the summer holiday in december?"],
							["TF", "The following sentence is correct: 'Tim rides a Honda, but I ride a kawasaki.'"],
							["MC", "Which words should be capitalised in the following sentence: 'the traffic was really bad on the albany highway on thursday.'"]
         		  ]

				end
		

  
      
  
  
  
  
 #*HASS*

    def hass
			@subjects = ["Year 7 HaSS", "Year 8 HaSS", "Year 9 HaSS"]
    	@title = "Humanities and Social Sciences"
    end
	
			def year7hass
				@subjects = ["Geography", "History", "Civics", "Economics"]
				@title = "Year 7"
			end
	
				def geography
					@subjects = ["Environmental Resources"]
					@title = "Geography"
				end
	
					def environmentalresources
						@title = "Environmental Resources"
          	@contents = [
              ["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/hass%2F7%2Fgeography%2F7.1.1.png?alt=media&token=20c2381b-f767-4734-bb8f-1826a0efee09"],
              ], 
							["TF", "Resources are things that can be used to sustain and improve life."],
              ["TF", "Anything man made or built by humans is not considered a ‘natural’ resource."],
							["SC", "What is NOT a major category of resource?", "a. Natural", "b. Relgious", "c. Political", "d. b and c"],
							["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/hass%2F7%2Fgeography%2Fenviro%20resources%2F7.1.2.png?alt=media&token=32d5f73a-8820-4b4f-b4ba-836c51e05536"],
              ],
							["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/hass%2F7%2Fgeography%2Fenviro%20resources%2F7.1.3.png?alt=media&token=85a5e0cd-a95a-435e-834d-dbd7f04de8e4"],
              ],
              ["TF", "Examples of ‘flow’ resources include mined minerals."], 
              ["SC", "Gold is only available in certain regions of earth. What resource would gold be?", "Cyclic", "Localised", "Flow", "Biotic"],
              ["TF", "Examples of ‘abiotic’ resources include fish."],
							["SC", "Fish can be considered as:", "a. Something that has an organic chemical composition", "b. Of biotic origin", "c. a and b",
							"d. None of the above"],
							["SC", "Sand can be considered as:", "a. Something that has an organic chemical composition", "b. Of biotic origin", "c. a and b",
							"d. None of the above"],
							["TH", 
                ["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/hass%2F7%2Fgeography%2Fenviro%20resources%2F7.1.4.png?alt=media&token=596801f6-e528-453d-9f48-7e5b38e85b46"],
              ],
							["TF", "All resources on earth ARE renewable."],
							["DL", "Fossil Fuels are", "finite", "infinite", "perpetual", "None of the above"],
							["SC", "What are the problems faced with ‘potentially renewable’ resources?", "a. There is too much of it",
							"b. Using it too fast will cause scarcity", "c. It does not renew as fast as the rate it is used", "d. b and c"],
							["TF", "Finite resources are the same as potentially renewable resources as they both can renew over time."],
							["TF", "Finite resources are similar to potentially renewable resources in the sense that they both can cause
							scarcity if their usage is not managed properly."],
							["FIB", "A resource that is perpetual is also called a renewable and i","@nfinit","e resource"],
							["SC", "Finite resources are ‘limited’ in the sense that:", "They will eventually run out if not used",
							"There is only a set amount", "It renews very slowly", "All of the above"],
							["DL", "Potentially renewable resources are ‘limited’ in the sense that:", "They do not renew", "They renew very slowly", 
							"They renew every season"],
							["DD", "Order the following in order of: Renewable, Potentially Renewable, Non-Renewable", "Fossil Fuels", "Sun light", "Trees"],
							["TH", 
								["img", "https://firebasestorage.googleapis.com/v0/b/manezco.appspot.com/o/hass%2F7%2Fgeography%2Fenviro%20resources%2F7.1.5.png?alt=media&token=e600f236-8919-467c-bd04-c1baff061691"],
							],
							["FIB", "Based on the theory you just read, it can be assumed that people in the past thought that environmental resources were:",
							"@infinite", "in their amount."],
							["FIB", "Conserving environmental resources now to ensure they would be available for use in the future would be considered a ",
							"@long", " -term environmental resource strategy."],
							["SC", "Why does population growth affect natural resource management?", "More people would mean more natural resources required",
							"More people would mean lesser need for natural resources", "The more the population grows, the more the natural resources grow"],
							["TF", "Short term gains made by using up natural resources until depletion will positively effect the long term natural resources supply."],
							["MC", "What will be the best plan for a country concerned with resource conservation and economic growth?", "Quickly use and deplete all natural
							resources until they're finished", "Use resources only when needed", "Use resources that can renew", "Create jobs that help conserve resources",
							"Never use any resource", "Take other country's resources"]
							]
							
          @answer = ["True", "False", "d. b and c", "False", "Localised", "False", "c. a and b", "d. None of the above", "False", "finite", "d. b and c",
										"False", "True", "nfinit", "There is only a set amount", "They renew very slowly", ["Sun light", "Trees", "Fossil Fuels"], "infinite",
										"long", "More people would mean more natural resources required", "False", ["Use resources only when needed", "Use resources that can renew",
										"Create jobs that help conserve resources"] ]        
          @question = [
             	["TF", "Resources are things that can be used to sustain and improve life."],
              ["TF", "Anything man made or built by humans is not considered a ‘natural’ resource."],
							["SC", "What is NOT a major category of resource?"],
							["TF", "Examples of ‘flow’ resources include mined minerals."], 
              ["SC", "Gold is only available in certain regions of earth. What resource would gold be?"],
              ["TF", "Examples of ‘abiotic’ resources include fish."],
							["SC", "Fish can be considered as:"],
							["SC", "Sand can be considered as:"],
							["TF", "All resources on earth ARE renewable."],
							["DL", "Fossil Fuels are"],
							["SC", "What are the problems faced with ‘potentially renewable’ resources?"],
							["TF", "Finite resources are the same as potentially renewable resources as they both can renew over time."],
							["TF", "Finite resources are similar to potentially renewable resources in the sense that they both can cause
							scarcity if their usage is not managed properly."],
							["FIB", "A resource that is perpetual is also called a renewable and i____e resource"],
							["SC", "Finite resources are ‘limited’ in the sense that:"],
							["DL", "Potentially renewable resources are ‘limited’ in the sense that:"],
							["DD", "Order the following in order of: Renewable, Potentially Renewable, Non-Renewable"],
							["FIB", "Based on the theory you just read, it can be assumed that people in the past thought that environmental resources were:"],
							["FIB", "Conserving environmental resources now to ensure they would be available for use in the future would be considered a ____-term environmental resource strategy."],
							["SC", "Why does population growth affect natural resource management?"],
							["TF", "Short term gains made by using up natural resources until depletion will positively effect the long term natural resources supply."],
							["MC", "What will be the best plan for a country concerned with resource conservation and economic growth?"]
							]
					end
						
		
  
  
  


end  
  
    private 
        def score_params
            params.permit(:quiz, :mark)
        end

