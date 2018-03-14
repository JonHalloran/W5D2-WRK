Rails.application.routes.draw do

  resources :subs, except: :destroy

  resource :session, only: [:new, :create, :destroy]

  resources :posts, except: :index

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
