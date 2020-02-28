Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies, only: :index
      resources :seasons, only: :index
      resources :purchases, only: :create
      get :movies_seasons, to: "movies#movies_seasons", as: :movies_seasons
      get :library, to: "users#library", as: :library
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
