Rails.application.routes.draw do

  get 'chat/:id' => 'chats#show', as: 'chat'

  resources :chats, only: [:create]

	devise_for :users
  resources :users,only: [:show,:edit,:update,:index]
  resources :books
  root 'home#top'
  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
