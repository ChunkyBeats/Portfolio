Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  root 'home#index'

  resources :users

  resources :skills
  resources :projects
  resources :posts do
    resources :comments
  end
end
