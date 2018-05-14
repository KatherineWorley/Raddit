Rails.application.routes.draw do
  resources :comments
  devise_for :users
  # devise_for :installs

  resources :links do
  	member do
  		put "like", to: "links#upvote"
  		put "dislike", to: "links@downvote"
  	end 

    resources :comments
  end
  
  root to: "links#index"
  
end