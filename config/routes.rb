Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"

  resources :lists, only: %i(index show new create)do
    resources :bookmarks, only: %i(new create )
  end
  resources :bookmarks, only: %i(destroy)
  # GET "lists/42/bookmarks/new"
  # POST "lists/42/bookmarks"

end


# get "restaurants", to: "restaurants#index"
# get "restaurants/:id", to: "restaurants#show"

# get "restaurants/new", to: "restaurants#new"
# post "restaurants", to: "restaurants#create"

# get "restaurants/:id/edit", to: "restaurants#edit"
# patch "restaurants/:id", to: "restaurants#update"

# delete "restaurants/:id", to: "restaurants#destroy"
