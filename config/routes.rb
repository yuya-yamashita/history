Rails.application.routes.draw do



  get 'diaries/new'

  root 'pages#index'

  get 'comments/new'
  post 'comments/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/comments', to: 'comments#create'

  resources 'users'
  resources 'diaries'
  resources 'comments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
