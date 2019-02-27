Rails.application.routes.draw do
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'
  devise_for :users
  resources :contents
  root to: 'home#index'
  get '/book' ,to: 'home#book'
  get '/technology' ,to: 'home#technology'
  get '/detail/:id' ,to: 'home#detail' , as: 'detail'
  get '/shf' ,to: 'home#administrator'
  post '/search' ,to: 'home#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
