Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'trips#index', as: :authenticated_root
  end

  get 'find_trips' => 'trips#find_trips'
  get 'search' => 'trips#search'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
