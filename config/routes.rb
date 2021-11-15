Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'restaurants/index'
    end
  end
  devise_for :users
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: %i[index show]
    end
  end
end
