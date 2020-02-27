Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :seasons

      get :movies_seasons, to: "movies#movies_seasons", as: :movies_seasons
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
