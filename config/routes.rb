Rails.application.routes.draw do
  get 'documentation/index'

  resources :contexts
  resources :responses

  root 'documentation#index'
end
