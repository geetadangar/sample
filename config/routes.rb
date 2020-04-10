Rails.application.routes.draw do
  root to: 'home#index'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
  Rails.application.routes.draw do
      devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
      }
  end
end
