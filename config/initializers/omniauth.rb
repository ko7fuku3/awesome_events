Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "78a7d2bcc0d8aad793d7", "765623ede24e0c2c20e028f33d0b5689464b4537"
  else
    provider :github,
      Rails.application.credentials.github[:clinet_id],
      Rails.application.credentials.github[:client_secret]
  end
end