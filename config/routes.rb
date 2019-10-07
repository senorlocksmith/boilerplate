Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :projects
  resources :accounts
  # Tell Devise to use your new controller inside app/config/routes.rb
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "projects#index"
end
