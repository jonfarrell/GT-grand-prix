Rails.application.routes.draw do

  devise_for :users,
   :controllers => {
    :registrations => "users/registrations"
   }

  resources :races

  resources :grandprix_circuits
  resources :circuits
  resources :grandprixes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'pages/home' => 'high_voltage/pages#show', id: 'home'

  post 'new_grandprix_circuit', to: 'grandprix_circuits#new'

  authenticated :user do
    root 'grandprixes#index', as: :authenticated_root
  end
end
