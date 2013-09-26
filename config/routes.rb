Afflatus::Application.routes.draw do
  devise_for :users

  root :to => 'welcome#index'

  resources :users, except: [:destroy, :new, :create] do
  	resources :photo_inspireds, except: [:index]
  	resources :music_inspireds, except: [:index]
end

  resources :dashboard, only: [:index]
  resources :select_muse, only: [:index]

  
end
