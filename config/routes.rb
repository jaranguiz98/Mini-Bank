Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'accounts/index', to: 'accounts#index', as: 'accounts_index'
  get 'accounts/:id', to: 'accounts#show', as: 'accounts_show'
  get 'accounts/new', to: 'accounts#new', as: 'accounts_new'
  post 'accounts', to: 'accounts#create'
  delete 'accounts/:id', to: 'accounts#delete', as: 'accounts_delete'


  get 'welcome/index', to: 'welcome#index'
  root 'welcome#index'
  devise_for :usuarios, controllers: { sessions: 'usuarios/sessions', registrations: 'usuarios/registrations'},
                        path: '', path_names:{sign_in: 'login', sign_out:'logout', sign_up: 'register'}
end
