class RegisterNotifier < ApplicationMailer
default :from => 'annafest2016@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(register)
    mail( :to => register.email,
    :subject => "Annafest 2016 Registration Confirmation #{register.id}")
  end

end
