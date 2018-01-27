Rails.application.routes.draw do

  get 'tagindexes/new'

  root 'pages#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'users/edit', to: 'users#edit'
  delete 'users/delete',  to: 'users#destroy'

  post '/comments', to: 'comments#create'
  get 'comments/edit', to: 'comments#edit'
  delete 'comments/delete', to: 'comments#destroy'

  get 'diaries/new'
  get 'diaries/edit', to: 'diaries#edit'
  delete 'diaries/delete',  to: 'diaries#destroy'

  get 'tags/index', to: 'tags#index'

  resources 'users'
  resources 'diaries'
  resources 'comments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
