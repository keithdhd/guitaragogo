Rails.application.routes.draw do

  resources:lessons
  resources:songs
  resources:sessions
  resources:users

  root "users#index"
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
end