Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/clients', to: 'clients#index'
  get '/clients/new', to: 'clients#new'
  post '/clients', to: 'clients#create'
  get '/clients/:id', to: 'clients#show', as: :show_client_path
  get '/clients/:id/edit', to: 'clients#edit', as: :edit_client_path
  patch '/clients/:id', to: 'clients#update', as: :patch_client_path
  delete '/clients/:id', to: 'clients#destroy', as: :delete_client_path
end
