Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}
  resources :properties do 
    collection do 
      get :get_state_cities
      get :find_property_by_serach
    end
  end
    resources :amenities
    resources :agents
     root 'home#index'
end

