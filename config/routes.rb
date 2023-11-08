Rails.application.routes.draw do
  
  resources :chequeos
  resources :vacunas
  patch '/profiles/:id/edit', to: 'profiles#update'  # Cambié 'profiles/:id' a '/profiles/:id'
  get '/profiles/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  get '/profiles/:id', to: 'profiles#index', as: 'profile'
  get 'profiles/update'
  get 'inicio/index'
  get 'turnos/index'
  get 'authentication/sessions/new'
  resources :turnos
  resources :main
  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  end
  get 'logout', to: 'authentication/sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "inicio#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :profiles, only: [:index, :edit, :update]
  resources :dogs
  resources :dogs do
    get 'verFichaMedica', on: :member
  end
  
end
