Rails.application.routes.draw do
  get 'genres/new'

  post 'genres/:id', to: 'genres#create'

  get 'genres/:id', to: 'genres#show'

  get 'genres/:id/edit', to: 'genres#edit'

  patch 'genres/:id', to: 'genres#update'

  put 'genres/:id', to: 'genres#update'

  get 'artists/new'

  post 'artists', to: 'artists#create'

  get 'artists/:id', to: 'artists#show'

  get 'artists/:id/edit', to: 'artists#edit'

  patch 'artists/:id', to: 'artists#update'

  resources :songs

  # get 'songs/new'
  #
  # post 'songs/create'
  #
  # get 'songs/:id', to: 'songs#show'
  #
  # get 'songs/edit'
  #
  # patch 'songs/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
