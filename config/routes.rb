Rails.application.routes.draw do
  root 'city#index'
  post 'city/sorting', as: :sorting_city

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
