TraxterIo::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations}
  get "home/index"

  root :to => "static_pages#home"
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"

  resources :users, only: [:show]
end
