Rails.application.routes.draw do
  get 'welcome/dashboard'
  get 'welcome/index'
  get 'maths' => 'quizs#maths'
  get 'quiz1' => 'quizs#quiz1'
  get 'result' => 'quizs#result'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#dashboard'
end
