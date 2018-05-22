Rails.application.routes.draw do
  resources :portfolios

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  resources :blogs
  root to: 'pages#home'
end
