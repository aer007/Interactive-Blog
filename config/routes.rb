Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  resources :blogs
  root to: 'pages#home'
end
