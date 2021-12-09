Rails.application.routes.draw do
  root to: 'pages#index'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      # authentication routes
      post :signin, to: 'auth#signin'
      post :signup, to: 'auth#signup'
      post :signout, to: 'auth#signout' 
      
      # cars
      get "cars", to: "cars#index"
      post "cars", to: "cars#create"

      # reservations
      get "reservations", to: "reservations#index"
      post "reservations", to: "reservations#create"

      # cities
      get "cities", to: "cities#index"
      post "cities", to: "cities#create"
    end
  end
end
