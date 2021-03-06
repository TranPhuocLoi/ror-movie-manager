Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/', module: :web, as: :web do
    root "home#index"
  end

  scope '/admin', module: :admin, as: :admin do
    root 'movies_dashboard#index'
    resources :movies
    devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  end
  
end
