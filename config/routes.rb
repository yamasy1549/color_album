Rails.application.routes.draw do
  root :to => 'designs#index'

  resources :designs
  get 'search', :to => 'designs#tag_search'
end
