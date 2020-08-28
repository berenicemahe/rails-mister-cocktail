Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'doses/index'
  get 'doses/show'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :show] do
      resources :ingredients, only: [:index, :show]
    end
  end
end
