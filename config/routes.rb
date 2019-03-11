Rails.application.routes.draw do
  get '/user/notifications' => 'users#notifications'
  get '/user/support' => 'users#support'
  get '/user/profile' => 'users#profile'
  get '/user/plan' => 'users#plan'
  get '/user/billing' => 'users#billing'
  get '/user' => 'users#profile'
  get 'home/index' 
  get 'welcome/dashboard'
  get 'welcome/index'
  
  get 'maths' => 'quizs#maths'
   	get 'maths/year7' => 'quizs#year7'
  		get 'year7/geometry' => 'quizs#geometry'
  		get 'year7/numberandalgebra' => 'quizs#numberandalgebra'
				get 'numberandalgebra/indexpowers' => 'quizs#indexpowers'
				get 'numberandalgebra/primenumbers1' => 'quizs#primenumbers1'
				get 'numberandalgebra/primefactors1' => 'quizs#primefactors1'

	
  get 'science' => 'quizs#science'
  	get 'science/physics' => 'quizs#physics'
  		get 'physics/sound' => 'quizs#sound'
		get 'science/earthscience' => 'quizs#earthscience'
			get 'earthscience/tectonicplates' => 'quizs#tectonicplates'
	
  get 'english' => 'quizs#english'
  	get 'english/year7english' => 'quizs#year7english'
			get 'year7english/punctuation' => 'quizs#punctuation'
				get 'punctuation/basicpunctuation' => 'quizs#basicpunctuation'
	
  get 'hass' => 'quizs#hass'
		get 'hass/year7hass' => 'quizs#year7hass'
			get 'year7hass/geography' => 'quizs#geography'
				get 'geography/environmentalresources' => 'quizs#environmentalresources'

  get 'jqueryui' => 'quizs#jquery'
  get 'result' => 'quizs#result'
  post 'mark' => 'quizs#mark'
  get '/welcome/score' => 'quizs#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
