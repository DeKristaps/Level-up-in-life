Rails.application.routes.draw do
  get 'profiles/show'
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
