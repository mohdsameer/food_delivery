Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'authenticate', to: 'authentication#authenticate'
  post 'signup', to: 'registration#create'

  resources :products, only: [:index] do
    member do
      post :make_favorite
    end
    collection do
      get :favorites
    end
  end
end
