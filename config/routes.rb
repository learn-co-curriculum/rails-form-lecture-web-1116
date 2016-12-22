Rails.application.routes.draw do
  get 'artists/new'

  post 'artists', to: 'artists#create'

  get 'artists/:id', to: 'artists#show'

  get 'artists/:id/edit', to: 'artists#edit'

  patch 'artists/:id', to: 'artists#update'

  get 'genres/new'

  post 'genres', to: 'genres#create'

  get 'genres/:id', to: 'genres#show'

  get 'genres/:id/edit', to: 'genres#edit'

  patch 'genres/:id', to: 'genres#update'

  get 'songs/new'

  post 'songs', to: 'songs#create'

  get 'songs/:id', to: 'songs#show', as: 'song'

  get 'songs/:id/edit', to: 'songs#edit'

  patch 'songs/:id', to: 'songs#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
