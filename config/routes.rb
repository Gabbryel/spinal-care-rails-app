Rails.application.routes.draw do
  devise_for :users
  resources :users, except: [:new]
  
  get 'carousel_cards/new'
  get 'carousel_cards/create'
  get 'carousel_cards/show'
  get 'carousel_cards/edit'
  get 'carousel_cards/update'
  get 'carousel_cards/index'
  get 'carousel_cards/destroy'

  get 'admin', to: 'admin#general'
  get 'team-members', to: 'admin#team_members'
  get 'medical-appliances', to: 'admin#medical_appliances'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
