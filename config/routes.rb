Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'exchange/rates_for/:code', to: 'exchange#rates_for'
end
