Afflatus::Application.routes.draw do
  devise_for :users

  root :to => 'welcome#index'

  resources :users, except: [:destroy, :new, :create] do
  	resources :photo_inspireds, except: [:index] do
  		match '/create/:id',  :to => 'photo_inspireds#create'  , :as => :create
  		end 
end

  resources :dashboard, only: [:index]

  
end
