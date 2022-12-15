Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  #root to: 'users#index'

  resources :users, only: [:index, :show] do
    resources :foods, only: [:index, :show, :new, :create, :destroy]
    resources :recipes, only: [:index, :show, :new, :create, :destroy] do
      resources :recipe_foods, only: [:new, :edit, :create, :update, :destroy]
      resources :general_shopping_list, only: [:index]
    end
  end

  resources :public_recipes, only: [:index]
end
