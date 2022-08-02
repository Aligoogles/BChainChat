Rails.application.routes.draw do
  get 'users/profile'

  #News (API)
  get 'news', to: 'pages#news'

  #Events
  get 'events', to: 'pages#events'

  #Landing Page
  root 'pages#home'

  use_doorkeeper

  #Posts/Reply/Likes
  resources :posts do
    member do
      patch :vote
    end
    resources :replies
  end
  
  #User profile
  get '/u/:id', to:'users#profile', as: 'user'

  #Devise - users access
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  #allows to draw additional routes from new routes folder
  draw :api

end
