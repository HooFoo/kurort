Rails.application.routes.draw do

  namespace :users, defaults: {format: :json} do
    get 'current'
    get 'show'
  end

  root 'index#index'

  get 'index/index'

  resources :comments
  resources :points
  devise_for :users, controllers: {
      sessions: 'auth/sessions',
      registrations: 'auth/registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
