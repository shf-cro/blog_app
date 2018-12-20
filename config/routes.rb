Rails.application.routes.draw do
  root to: 'home#index'
  get '/book' ,to: 'home#book'
  get '/technology' ,to: 'home#technology'
  get '/detail' ,to: 'home#detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
