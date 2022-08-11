Rails.application.routes.draw do
  #Events Page
  resources :events do
    member do
      patch :rsvp
    end
  end

  #User Profile page
  get '/profile/:id', to:'user_profiles#profile', as: 'user_profile'

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
  #draw :api

end
