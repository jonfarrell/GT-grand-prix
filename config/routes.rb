Rails.application.routes.draw do
  resources :grandprix_circuits
  resources :circuits
  resources :grandprixes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'grandprixes#index'

end
