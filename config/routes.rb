Rails.application.routes.draw do
  resources :restaurants do
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show'

  # Defines the root path route ("/")
  # root "articles#index"
end
