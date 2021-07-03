Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  get 'rooms/:id' =>'rooms#show'
  root "pages#index"
  get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :users
  resource :messages
  resource :channels

end
