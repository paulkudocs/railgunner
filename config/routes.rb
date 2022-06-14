Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  } 

  # Ping to check site up
  resources :ping, only: [:index] do
    collection do 
      get :auth
    end
   end
end
