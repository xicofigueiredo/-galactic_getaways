Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :astros do
    resources :bookings, only: %i[new create] do
      member do
        get :confirm
      end
    end
  end

  resources :bookings, only: %i[index show]

  get '/planets', to: 'pages#planets'
  get '/commets', to: 'pages#commets'
  get '/asteroids', to: 'pages#asteroids'
  get '/stars', to: 'pages#stars'
  get '/galaxies', to: 'pages#galaxies'
  get '/mylistings', to: 'pages#mylistings'
end
