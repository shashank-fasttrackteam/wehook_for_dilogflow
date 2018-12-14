Rails.application.routes.draw do
  # post '/callback', to: 'webhooks#callback', constraints: { format: 'json' }
  mount ActionCable.server => '/cable'
  # constraints subdomain: "hooks" do
  #   post '/:integration_name' => 'webhooks#receive', as: :receive_webhooks
  # end
  post '/welcome_from_hiiiipe', to: 'webhooks#welcome_from_hiiiipe', constraints: { format: 'json' }
  get '/welcomes', to: 'welcomes#index'
  # root 'webhooks#welcome_from_hiiiipe'
  root 'welcomes#index'
end
