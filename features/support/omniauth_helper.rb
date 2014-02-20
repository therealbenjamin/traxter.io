OmniAuth.config.test_mode = true

def valid_mock_auth_hash(provider)
  OmniAuth.config.add_mock(provider.downcase.to_sym, {
    :info => {
      :email => "user@user.com" },
    :uid => "24682"
  })
end

def invalid_mock_auth_hash(provider)
  OmniAuth.config.mock_auth[provider.downcase.to_sym] = :invalid_credentials
end