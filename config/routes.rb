Rails.application.routes.draw do
  devise_for :users
  get 'events/index'
  get 'events/new'
  #get 'events/create'
  #get 'events/show'
  get 'events/:id' => 'events#show'
  post 'events' => 'events#create'
  resources :tickets
  # root :to =>"index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
