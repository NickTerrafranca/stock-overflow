Rails.application.routes.draw do
  resources :questions, except: [:destroy] do
    resources :answers, only: [:create]
end
  resources :answers, except: [:edit, :update, :destroy]
end

