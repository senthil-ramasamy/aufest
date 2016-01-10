# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'annafest2016@gmail.com',
  password:             'root@123',
  authentication:       'plain',
  enable_starttls_auto: true  }

#ActionMailer::Base.smtp_settings = {
#  :user_name => 'senthiran',
#  :password => 'root@123',
#  :domain => 'www.annafest.in',
#  :address => 'smtp.sendgrid.net',
#  :port => 587,
#  :authentication => :plain,
#  :enable_starttls_auto => true
#}

