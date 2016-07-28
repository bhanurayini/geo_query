Rails.application.routes.draw do

  resources :programs
  resources :locations
  resources :organizations
  root                                      'locations#index'
  
end
