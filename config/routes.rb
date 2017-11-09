Rails.application.routes.draw do

  get '/ryan' => 'home#ryan'

  resources :users

  resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
