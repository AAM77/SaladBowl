Rails.application.routes.draw do
  post "/api/v1/register", to: "api/v1/users#create"
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"

  get "/api/v1/countries", to: "api/v1/countries#index"
  get "/api/v1/countries/:id", to: "api/v1/countries#show"

  get "/api/v1/states", to: "api/v1/states#index"
  get "/api/v1/states/:id", to: "api/v1/states#show"

  get "/api/v1/cities", to: "api/v1/cities#index"
  get "/api/v1/cities/:id", to: "api/v1/cities#show"


  namespace :api do
    namespace :v1 do
      resources :locations
      resources :users
      resources :salad_bars
      resources :preferences
      resources :salad_bowls
      resources :ingredients
      resources :categories
    end
  end
end
