Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :soldiers do 
    resources :users do
      member do 
        get 'dashboard'
      end
    end
  end

  namespace :donors do
    resources :users do
      member do
        get 'dashboard'
        get 'receipts'
      end
    end
  end
end
