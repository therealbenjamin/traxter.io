TraxterIo::Application.routes.draw do
  get "home/index"
  devise_for :users

  root :to => "static_pages#home"
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"
end
