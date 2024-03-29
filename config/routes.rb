Rails.application.routes.draw do
  authenticate :user do
    scope(path: :cp) do
      resources :blogs
    end
  end

  root to: 'home#index'
  get 'blogs/:id', to: 'home#show', as: 'home_show'
  get 'about', to: 'home#about', as: 'about'
  get 'contact', to: 'home#contact', as: 'contact'

  devise_for :users, skip: :registration
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
