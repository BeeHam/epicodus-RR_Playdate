Rails.application.routes.draw do
  root 'plans#index'

  resources :plans do
    resources :subscriptions
  end
end
