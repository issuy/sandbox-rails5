# frozen_string_literal: true

# Authentication Code Flow Example
class Oauth2Controller < ApplicationController
  require 'oauth2'

  def authorization
    login_url = oauth_client.auth_code.authorize_url
    redirect_to login_url
  end

  def callback
    token = oauth_client.auth_code.get_token(params['code'])
    # Execute the API request using TOKEN here for the time being.
    res = token.request(:get, 'example.json')
    render json: res.body, status: 200
  end

  private

  def oauth_client
    OAuth2::Client.new(
      'client_id',
      'client_secret',
      site: 'https://example.com',
      redirect_uri: 'http://localhost:3000/oauth2/callback'
    )
  end
end
