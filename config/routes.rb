Rails.application.routes.draw do
  resources :products
  devise_for :businessmen, controllers: {
           :sessions => "businessmen/sessions",
           :registrations => "businessmen/registrations" }
  devise_for :reviewers, controllers: {
           :sessions => "reviewers/sessions",
           :registrations => "reviewers/registrations" }
  devise_for :admins

  authenticated :businessman do
  	root :to => "businessmen#show"
	end
  root 'home#home_page'
  resources :reviewers
  resources :businessmen
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
