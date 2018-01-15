Rails.application.routes.draw do

  root 'pages#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/comments', to: 'comments#create'
  get 'diaries/new'
  delete 'diaries/delete',  to: 'diaries#destroy'

  resources 'users'
  resources 'diaries'
  resources 'comments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
