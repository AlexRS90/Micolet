Rails.application.routes.draw do
  get 'user/index'
  get 'user/new'
  post 'user/create', to: 'user#create'
  get 'newsletter/new', to: 'newsletter#new'
  post '/newsletter/create', to: 'newsletter#create'
  root "newsletter#new"
end
