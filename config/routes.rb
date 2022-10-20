Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :exchange, only: :none do
    member do
      get 'rates_for'
    end
  end
end
