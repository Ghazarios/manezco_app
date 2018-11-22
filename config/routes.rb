Rails.application.routes.draw do
  get 'welcome/dashboard'
  get 'welcome/index'
  get 'maths' => 'quizs#maths'
  get 'science' => 'quizs#science'
  get 'science/physics' => 'quizs#physics'
  get 'science/physics/sound' => 'quizs#sound'
  get 'english' => 'quizs#english'
  get 'hass' => 'quizs#hass'
  get 'quiz1' => 'quizs#quiz1'
  get 'result' => 'quizs#result'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#dashboard'
end
