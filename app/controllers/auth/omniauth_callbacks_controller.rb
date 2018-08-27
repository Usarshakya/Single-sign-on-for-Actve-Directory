class Auth::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def saml
  	binding.pry
    raise request.env["omniauth.auth"].to_yaml
    response = OneLogin::RubySaml::Response.new(params[:SAMLResponse])

    raise response.to_yaml

    # if response.is_valid?
    #   redirect_to root_url
    # end
  end
end