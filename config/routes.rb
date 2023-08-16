Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  end

  # resources :reviews, only: [:show, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end



# RESTAURANT ROUTES, a user can :
#  see the list of all restaurants.
#  add a new restaurant
#  see the details of a restaurant, with all the reviews related to the restaurant.
#  add a new review to a restaurant

# REVIEW ROUTES, a user can :
# add a new review to a restaurant: "restaurants/38/reviews/new"
# see the details of a restaurant, with all the reviews related to the restaurant."restaurants/38/reviews"
