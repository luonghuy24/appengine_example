Rails.application.routes.draw do
  get 'welcome/index'
  get '/orders' => 'orders#new'
  root 'orders#new'

  resources :orders, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
