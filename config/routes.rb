Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'questions#index'

  concern :commentable do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  concern :votable do
    resources :votes, only: :create
  end

  devise_for :users, controller: {:registrations => "users/registrations"}

  resources :questions do
    concerns [:commentable, :votable]
    resources :answers, only: [:create, :edit, :update, :destroy] do
      concerns [:commentable, :votable]
    end
  end
end
