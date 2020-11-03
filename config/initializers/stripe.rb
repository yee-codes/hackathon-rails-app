# Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)

Rails.configuration.stripe = {
    :publishable_key => ENV['PUBLISHABLE_KEY'],
    :secret_key      => ENV['SECRET_KEY']
  }
  
#   Stripe.api_key = Rails.configuration.stripe[:secret_key]

  Stripe.api_key = Rails.application.credentials.stripe[:secret_key]


  # make sure stripe works