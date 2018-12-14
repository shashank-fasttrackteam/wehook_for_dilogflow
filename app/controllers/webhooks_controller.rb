class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def result
    # req = request.get_json(force=True)
    # action = request.get('queryResult').get('action')
    conn = Faraday.new
    response = conn.post('https://9370a051.ngrok.io/webhooks')
    JSON.parse(response.body)
  end

  def welcome_from_hiiiipe
    render json: result
  end

  def callback
    render :nothing => true, :status => 200
    puts "GOT CALLBACK!"
    save_webhook_params(params)
  end

  private

end