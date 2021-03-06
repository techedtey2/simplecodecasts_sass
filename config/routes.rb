Rails.application.routes.draw do
    devise_for :models, controllers: {registrations: 'models/registrations'} 
    resources :models do
        resource :profile
    end
    
    resources :contacts
    get '/about' => 'pages#about'
    root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
