Rails.application.routes.draw do
  root 'pets#index'
  resources :pets, :owners
end
