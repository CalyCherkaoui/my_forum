Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'

  devise_for :authors, controllers: {
    sessions: 'authors/sessions',
    registrations: 'authors/registrations',
    passwords: 'authors/passwords'
  }

  resources :authors do
    resource :profile, :controller => 'authors/profile'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
