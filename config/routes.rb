Rails.application.routes.draw do
  devise_for :users
  resources :grandprix_circuits
  resources :circuits
  resources :grandprixes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'pages/home' => 'high_voltage/pages#show', id: 'home'
  
  authenticated :user do
    root 'grandprixes#index', as: :authenticated_root
  end



end
