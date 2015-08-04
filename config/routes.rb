Rails.application.routes.draw do

  resources:lessons
  resources:songs
  resources:sessions
  resources:users
  resources:saved_songs

  root "songs#index"
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'my-songs', to: 'saved_songs#index'
end