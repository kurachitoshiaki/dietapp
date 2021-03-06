Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  root 'profiles#index'
  resources :profiles do
    resources :weights
  end
  resources :menus do
    resources :trainings
  end
  devise_scope :user do
    get 'user/:id', :to => 'users/registrations#detail'
    get 'signup', :to => 'users/registrations#new'
    get 'login', :to => 'users/sessions#new'
    get 'logout', :to => 'users/sessions#destroy'
  end
end