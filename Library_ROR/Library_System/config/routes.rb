Rails.application.routes.draw do
  devise_for :users

  #resource :session, :only => [:new, :create, :destroy]
  #match 'signup' => 'users#new', :as => :signup
  #match 'register' => 'users#create', :as => :register
  #match 'login' => 'sessions#new', :as => :login
  #match 'logout' => 'sessions#destroy', :as => :logout

  	#match 'activate/:activation_code' => 'users#activate', :as => activate, :activation_code => nil
 	#resources :support_issues 



  resources :cardholder_accounts
  get 'pages/home'
  root 'pages#home'


  resources :cardholder_personal_infos
  resources :materials
  resources :fines
  resources :checkouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
