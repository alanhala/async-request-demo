Rails.application.routes.draw do
  root to: 'application#index'

  mount Sidekiq::Web, at: 'sidekiq'

  get '/slow', to: 'sample#slow'
  get '/fast', to: 'sample#fast'
end
