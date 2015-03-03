# routes.rb
# By: Mathew Allen
# Sets up routes for the application

Rails.application.routes.draw do
  # Set up named routes

  # root route
  root 'static_pages#home'
  get 'signup' => 'users#new'

  # login/out routes
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # set up resourceful routes
  resources :users do
  end

  # routes for creating a new workout
  resources :workout_sessions do
    collection do
      get 'choose_routine', to: 'workout_sessions#choose_routine', as: 'choose_routine'
      get 'new_for_routine/:routine', to: 'workout_sessions#new_for_routine', as: 'new_for_routine'
    end
  end
end
