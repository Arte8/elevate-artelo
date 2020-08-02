Rails.application.routes.draw do
  root 'tips#index'
  # ^identifies root
  resources :tips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
