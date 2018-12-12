Rails.application.routes.draw do
  # post '/callback', to: 'webhooks#callback', constraints: { format: 'json' }
  mount ActionCable.server => '/cable'
  # constraints subdomain: "hooks" do
  #   post '/:integration_name' => 'webhooks#receive', as: :receive_webhooks
  # end
  post '/webhooks', to: 'webhooks#webhook', constraints: { format: 'json' }
  get '/welcomes' to: 'welcomes#index'
  root 'webhooks#webhook'
end
