Rails.application.routes.draw do
  devise_for :users
  # devise_for :installs

  resources :links do
  	member do
  		put "like", to: "links#upvote"
  		put "dislike", to: "links@downvote"
  	end 
  end
  
  root to: "links#index"
  
end