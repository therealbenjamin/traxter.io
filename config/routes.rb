	TraxterIo::Application.routes.draw do
  resources :tours

  devise_for :users
  get "home/index"

  root :to => "static_pages#home"
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"

  resources :users, only: [:show]

  resources :venues

  resources :shows
end
