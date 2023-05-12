Rails.application.routes.draw do
  get 'newsletter/new', to: 'newsletter#new'
  post '/newsletter/create', to: 'newsletter#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
