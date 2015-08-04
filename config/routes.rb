Rails.application.routes.draw do

  get 'genres/index'

  resources:lessons
  resources:songs
  resources:sessions
  resources:users
  resources:saved_songs
  resources:genres

  root "static_pages#home"
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'my-songs', to: 'saved_songs#index'
end