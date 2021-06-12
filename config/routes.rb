Rails.application.routes.draw do
  resources :seminars do
    resources :signups
  end

  resources :seminars do 
    resources :announcements
end
resources :signups
  resources :seminars
  resources :announcements
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }

#  devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  get '/seminars' => 'seminars#index'

  get 'seminars/:id' => 'seminars#show'
  post 'signups/:id' => 'signups#show'

  post 'seminars/:id' => 'seminars#show'

  root 'announcements#index'

  get 'announcements' => 'annoucements#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
