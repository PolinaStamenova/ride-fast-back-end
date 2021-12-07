Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
      # authentication routes
      post :signin, to: 'auth#signin'
      post :signup, to: 'auth#signup'
      post :signout, to: 'auth#signout'
      
      # model routes
      
      # categories
      get "categories", to: "categories#index"
      post "categories", to: "categories#create"
      
      # cars
      get "cars", to: "cars#index"
      post "cars/:categoy_id", to: "cars#create"

      # reservations
      get "reservations", to: "reservations#index"
      post "reservations", to: "reservations#create"
    end
  end
end
