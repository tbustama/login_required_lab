Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#index", as: :home
  resources :sessions, only: [:new, :create]
  get '/show' => 'secrets#show', as: :show
  post '/destroy' => 'sessions#destroy'
end
