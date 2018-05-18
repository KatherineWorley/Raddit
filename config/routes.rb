Rails.application.routes.draw do
  resources :comments, :only => :create
  devise_for :users
  # devise_for :installs

  resources :links do
  	member do
  		put "like", to: "links#upvote"
  		put "dislike", to: "links@downvote"
  	end 

    resources :comments, :only => :create
  end
  
  root to: "links#index"
  
end