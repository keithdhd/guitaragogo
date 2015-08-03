Rails.application.routes.draw do

  get 'lessons/index'

  get 'lessons/new'

  get 'lessons/create'

  get 'lessons/show'

  get 'lessons/update'

  get 'lessons/destroy'

  get 'songs/index'

  get 'songs/new'

  get 'songs/create'

  resources:lessons
  resources:songs
  resources:sessions
  resources:users, only: [:new, :index, :show, :create]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

end
