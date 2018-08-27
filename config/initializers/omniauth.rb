Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
    :assertion_consumer_service_url     => "https://80eaf048.ngrok.io/omniauth/saml/callback",
    :issuer                             => "sso-test-receptionist",
    :idp_sso_target_url                 => "https://login.microsoftonline.com/e02deda9-05af-4604-82b6-adf05b462cad/saml2",
    :idp_sso_target_url_runtime_params  => {:original_request_param => :mapped_idp_param},
    :idp_cert_fingerprint               => "89:80:7E:1F:32:43:FF:1E:6C:F9:F9:F0:3E:C9:9A:CE:23:AE:31:B4",
    :name_identifier_format             => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
end