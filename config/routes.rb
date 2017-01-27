Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  concern :commentable do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  concern :votable do
    resources :votes, only: [:create, :destroy]
  end

  resources :question do
    concern :commentable, :votable
    resources :answers, only: [:create, :edit, :update, :destroy] do
      concern :commentable, :votable
    end
  end
end
