Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :usuarios

  resources :clientes

  resources :contatos, only: [:new, :create, :show, :index, :edit, :update, :destroy]
  resources :tipo_contatos, only: [:create]
  resources :meio_contatos, only: [:create]

  resources :sites

  root 'usuarios#entrar'
  get '/dashboard', to: 'dashboard#show'

  get '/entrar', to: 'usuarios#entrar'
  post '/login', to: 'usuarios#login'
  get '/sair', to: 'usuarios#logout'
end
