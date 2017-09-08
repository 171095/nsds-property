Rails.application.routes.draw do
  resources :properties do 
    collection do 
      get :get_state_cities
    end
  end
    resources :amenities
    resources :agents
     root 'home#index'
end

