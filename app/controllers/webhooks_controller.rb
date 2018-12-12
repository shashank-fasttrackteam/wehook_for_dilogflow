class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def result
    # req = request.get_json(force=True)
    # action = request.get('queryResult').get('action')
    return {'fulfillmentText': 'This is a response from webhook.'}
  end

  def webhook
    puts "-------#{result.to_json}-------------5"
    render json: result
  end

  def callback
    render :nothing => true, :status => 200
    puts "GOT CALLBACK!"
    save_webhook_params(params)
  end

  private

end