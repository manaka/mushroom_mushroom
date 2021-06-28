Rails.application.routes.draw do
  resources :mushrooms
  namespace :api do
    namespace :v1 do
      resources :search, only: [:index]
      resources :dictionaries, only: [:index]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
