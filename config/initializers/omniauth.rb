OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'Houselist', '6da2166dc967a7718cdbc48b1abbf74d', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
