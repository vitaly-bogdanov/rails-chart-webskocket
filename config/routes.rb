Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  root 'api/v1/chart_pies#index'
  get '/api/v1/chart-pies', to: 'api/v1/chart_pies#index', as: 'all_chart_pies_data'
end
