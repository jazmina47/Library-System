Rails.application.routes.draw do
  get 'pages/home'

  resources :cardholder_personal_infos
  resources :materials
  resources :fines
  resources :cardholder_accounts
  resources :checkouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
