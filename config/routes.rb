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
      resources :cars

      # reservations
      resources :reservations

      # cities
      resources :cities
    end
  end
end
