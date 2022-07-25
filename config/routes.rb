Rails.application.routes.draw do
  get 'pages/news'

  get 'pages/events'

  root 'pages#profile'

  use_doorkeeper
  resources :posts do
    member do
      patch :vote
    end
  end
  
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  #allows to draw additional routes from new routes folder
  draw :api


  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
