class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def result
    # req = request.get_json(force=True)
    # action = request.get('queryResult').get('action')
    conn = Faraday.new
    params = request.request_parameters
    response = conn.post('https://0c505ad7.ngrok.io/webhooks', params)
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