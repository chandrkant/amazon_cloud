Rails.application.routes.draw do
  # resources :amazon_cloud_fronts, only: [index]

  get '/service/AmazonCloudFront/region/:region' => 'amazon_cloud_fronts#price_data'
  root to: 'amazon_cloud_fronts#index'
  require 'sidekiq'
  require 'sidekiq/web'
  require 'sidekiq-scheduler'
  require 'sidekiq-scheduler/web'
  mount Sidekiq::Web => '/sidekiq'
  match '*path', to: "errors#handle_root_not_found", via: [:get, :post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
