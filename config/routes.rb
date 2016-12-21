Rails.application.routes.draw do
  get 'genres/new'

  post 'genres/create'

  get 'genres/show'

  get 'genres/edit'

  patch 'genres/update'

  get 'artists/new'

  post 'artists/create'

  get 'artists/show'

  get 'artists/edit'

  patch 'artists/update'

  get 'songs/new'

  post 'songs/create'

  get 'songs/show'

  get 'songs/edit'

  patch 'songs/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
