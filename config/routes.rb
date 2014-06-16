Rails.application.routes.draw do
  resources :questions, only: [:index, :show]
  resources :answers, only: [:index, :show]
end
