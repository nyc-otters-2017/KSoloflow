Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  concern :commentable do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  concern :votable do
    resources :votes, only: [:create, :destroy]
  end

  devise_for :users

  resources :question do
    concerns [:commentable, :votable]
    resources :answers, only: [:create, :edit, :update, :destroy] do
      concerns [:commentable, :votable]
    end
  end
end
