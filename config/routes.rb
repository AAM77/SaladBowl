Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"

  namespace :api do
    namespace :v1 do
      resources :locations
      resources :users
      resources :salad_bars
      resources :preferences
      resources :salad_bowls
      resources :ingredients
      resources :categories


      # get 'categories/index'
      # get 'categories/new'
      # get 'categories/create'
      # get 'categories/show'
      # get 'categories/edit'
      # get 'categories/update'
      # get 'categories/destroy'
    end
  end
end
#   namespace :api do
#     namespace :v1 do
#       get 'salad_bar_locations/index'
#       get 'salad_bar_locations/new'
#       get 'salad_bar_locations/create'
#       get 'salad_bar_locations/show'
#       get 'salad_bar_locations/edit'
#       get 'salad_bar_locations/update'
#       get 'salad_bar_locations/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'bowl_ingredients/index'
#       get 'bowl_ingredients/new'
#       get 'bowl_ingredients/create'
#       get 'bowl_ingredients/show'
#       get 'bowl_ingredients/edit'
#       get 'bowl_ingredients/update'
#       get 'bowl_ingredients/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'ingredients/index'
#       get 'ingredients/new'
#       get 'ingredients/create'
#       get 'ingredients/show'
#       get 'ingredients/edit'
#       get 'ingredients/update'
#       get 'ingredients/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'salad_bowls/index'
#       get 'salad_bowls/new'
#       get 'salad_bowls/create'
#       get 'salad_bowls/show'
#       get 'salad_bowls/edit'
#       get 'salad_bowls/update'
#       get 'salad_bowls/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'user_bowls/index'
#       get 'user_bowls/new'
#       get 'user_bowls/create'
#       get 'user_bowls/show'
#       get 'user_bowls/edit'
#       get 'user_bowls/update'
#       get 'user_bowls/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'preferences/index'
#       get 'preferences/new'
#       get 'preferences/create'
#       get 'preferences/show'
#       get 'preferences/edit'
#       get 'preferences/update'
#       get 'preferences/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'salad_bars/index'
#       get 'salad_bars/new'
#       get 'salad_bars/create'
#       get 'salad_bars/show'
#       get 'salad_bars/edit'
#       get 'salad_bars/update'
#       get 'salad_bars/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'locations/index'
#       get 'locations/new'
#       get 'locations/create'
#       get 'locations/show'
#       get 'locations/edit'
#       get 'locations/update'
#       get 'locations/destroy'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'users/index'
#       get 'users/new'
#       get 'users/create'
#       get 'users/show'
#       get 'users/edit'
#       get 'users/update'
#       get 'users/destroy'
#     end
#   end
# end
