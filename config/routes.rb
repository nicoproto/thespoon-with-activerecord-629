Rails.application.routes.draw do
  # CREATE
  # A form to add the restaurant information ✅
  get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # Create the restaurant ✅
  post "/restaurants", to: "restaurants#create"

  # READ
  # Read all the restaurants ✅
  get "/restaurants", to: "restaurants#index"
  # Read one specific restaurant ✅
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # UPDATE
  # form for the resto fields✅
  get "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # Update the restaurant✅
  patch "/restaurants/:id", to: "restaurants#update"

  # DELETE ✅
  delete "/restaurants/:id", to: "restaurants#destroy"


  # or
  # resources :restaurants

  # resources :restaurants, only: [:index, :show ]
end
