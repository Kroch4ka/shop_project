Rails.application.routes.draw do
  root to: 'suggestions#index'
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: 'users/registrations' }
  devise_for :admins, path: '/admin', path_names: { sign_in: 'login', sign_out: 'logout' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
