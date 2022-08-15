Rails.application.routes.draw do
  devise_for :users
  resources :frnds
  # get 'home/index'
  # root 'home#index'
  get 'home/about'
  root 'frnds#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
end


