Rails.application.routes.draw do
  root 'city#index'
  get 'city/done_index', as: :done_table
  post 'city/sorting', as: :sorting_city
  get 'city/chart', as: :chart
  get 'city/done_chart', as: :done_chart

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
