Devise.setup do |config|
  config.mailer_sender = "pham.hoang.duong@framgia.com"
  require "devise/orm/active_record"
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  config.omniauth :facebook, ENV["FACEBOOK_ID"], ENV["FACEBOOK_SECRET"]
  require "omniauth-google-oauth2"
  config.omniauth :google_oauth2, "596431766356-94a4p2spb7400n7j8ukqoa55b3prte0m.apps.googleusercontent.com", "v4BcL2gD1XPFhqxNj2huygO_"
end
