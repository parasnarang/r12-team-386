OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '139850259434486', '562c2ab92c79d35f3ecaf0a9ccaab73a'
end
