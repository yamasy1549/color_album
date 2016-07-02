Rails.application.routes.draw do
  root :to => 'designs#index'

  resources :designs
end
