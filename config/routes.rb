Rails.application.routes.draw do

  resources:lessons
  resources:songs
  resources:sessions
  resources:users, only: [:new, :index, :show, :create]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

end
