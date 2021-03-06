Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/clients', to: 'clients#index'
  get '/clients/new', to: 'clients#new', as: :new_client_path
  post '/clients', to: 'clients#create'
  get '/clients/:id', to: 'clients#show', as: :show_client_path
  get '/clients/:id/edit', to: 'clients#edit', as: :edit_client_path
  patch '/clients/:id', to: 'clients#update'
  delete '/clients/:id', to: 'clients#destroy', as: :delete_client_path
end
