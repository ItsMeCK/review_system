Rails.application.routes.draw do
  resources :products
  devise_for :businessmen
  devise_for :reviewers
  devise_for :admins
  root 'home#home_page'
    resources :reviewers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
