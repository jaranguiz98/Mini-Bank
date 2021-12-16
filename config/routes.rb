Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'accounts/index', to: 'accounts#index', as: 'accounts_index'
  get 'accounts/new', to: 'accounts#new', as: 'accounts_new'
  get 'accounts/:id', to: 'accounts#show', as: 'accounts_show'
  
  post 'accounts/new', to: 'accounts#create'
  delete 'accounts/:id', to: 'accounts#delete', as: 'accounts_delete'


  get 'transferencias/index', to: 'transferencias#index', as: 'transferencias_index'
  
  get 'transferencias/new/:id', to: 'transferencias#new', as: 'transferencias_new'
  
  
  post 'transferencias/new/:id', to: 'transferencias#create'
  

  get 'welcome/index', to: 'welcome#index'
  root 'welcome#index'
  devise_for :usuarios, controllers: { sessions: 'usuarios/sessions', registrations: 'usuarios/registrations'},
                        path: '', path_names:{sign_in: 'login', sign_out:'logout', sign_up: 'register'}
end
