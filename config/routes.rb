Rails.application.routes.draw do
  resources :questions, except: [:edit, :update, :destroy]
  resources :answers, except: [:edit, :update, :destroy]
end

