Rails.application.routes.draw do
  root to: 'cocktails#home'
  resources :cocktails do
    resources :recipe_amounts, only: [:new, :create]
  end

  resources :cocktails, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
