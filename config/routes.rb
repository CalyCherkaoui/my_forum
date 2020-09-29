Rails.application.routes.draw do
  devise_for :controllers
  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'

  devise_for :authors, controllers: {
    sessions: 'authors/sessions',
    registrations: 'authors/registrations'
  }

  resources :authors, only: %i[index show destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
