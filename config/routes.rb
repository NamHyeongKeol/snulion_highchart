Rails.application.routes.draw do
  root 'city#index'
  get 'city/table', as: :table
  get 'city/done_table', as: :done_table
  post 'city/sorting', as: :sorting_city
  get 'city/chart', as: :chart
  get 'city/done_chart', as: :done_chart
  post 'city/charting', as: :charting_city

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
