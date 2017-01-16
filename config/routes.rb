Rails.application.routes.draw do
  resources :reservations
  resources :articles
  resources :departments
  resources :employees
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
