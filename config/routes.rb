Rails.application.routes.draw do
  root 'home#index'

  resources :skills
  resources :projects
end
