Rails.application.routes.draw do

  get 'pages/leaderboard'
  resources :announcements
  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
