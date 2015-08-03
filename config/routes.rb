Rails.application.routes.draw do

  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  resources:lessons
  resources:songs
  resources:users, only: [:new, :index, :show, :create]

end
