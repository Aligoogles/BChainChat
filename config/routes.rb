Rails.application.routes.draw do

  #Events Page
  resources :events
  
  #User Profile page
  get 'user_profiles/profile'

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
  
  #User - messages
  get '/u/:id', to:'users#show', as: 'user'
  #get '/u/:id', to:'user_profiles#profile', as: 'user_profile'

  #Devise - users access
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  #Messages
  resources :dashboards do
    resources :messages 
  end

  #allows to draw additional routes from new routes folder
  draw :api

end
