Rails.application.routes.draw do
  root to: "domains#index"
  #devise_for :users
  resources :domains
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
