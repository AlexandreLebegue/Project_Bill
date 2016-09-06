Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users
  resources :companies
  get 'companies/new' => "companies#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
