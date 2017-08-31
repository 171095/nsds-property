Rails.application.routes.draw do
  resources :properties 
    resources :amenities
     root 'home#index'
end

