Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}
  resources :users, except: [:new]
  resources :carousel_cards
  resources :mini_cards
  resources :featurettes
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  resources :members
  resources :professions
  resources :specialties
  resources :articles

  get 'admin', to: 'admin#general'
  get 'team-members', to: 'admin#team_members'
  get 'medical-appliances', to: 'admin#medical_appliances'
  get 'blog-admin', to: 'admin#blog_admin'

  root to: 'pages#home'
  get 'despre-noi', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '*any', via: :all, to: 'errors#not_found'
end
