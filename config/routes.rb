Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, only: %i[show new create]
  end
end
