Rails.application.routes.draw do
  devise_for :users
  resources :cardholder_accounts
  get 'pages/home'
  root 'pages#home'
  resources :cardholder_personal_infos
  resources :materials
  resources :fines
  resources :checkouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
