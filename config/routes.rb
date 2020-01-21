Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end


  namespace :api do
    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"
    post "/dogs" => "dogs#create"
    patch "/dogs/:id" => "dogs#update"
    delete "/dogs/:id" => "dogs#destroy"

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    get "/alerts" => "alerts#index"
    get "/alerts/:id" => "alerts#show"
    post "/alerts" => "alerts#create"
    patch "/alerts/:id" => "alerts#update"
    delete "/alerts/:id" => "alerts#destroy"

    post "/sessions" => "sessions#create"
    get "/user" => "users#current_dog_owner"

    patch "/location" => "dogs#real_time_location"


  end
end