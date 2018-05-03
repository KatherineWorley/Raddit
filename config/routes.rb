Rails.application.routes.draw do
  # devise_for :installs
  resources :links
  
  root to: "home#index"
  
end
