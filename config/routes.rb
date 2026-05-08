Rails.application.routes.draw do
  root "home#index"

  resources :jobs do
    resources :applications, only: [:new, :create]
  end
end