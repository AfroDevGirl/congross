Rails.application.routes.draw do
  resources :amendments
  resources :committees
  resources :representatives
  resources :bills
  resources :votes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
