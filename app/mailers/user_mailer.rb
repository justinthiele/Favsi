class UserMailer < ActionMailer::Base
  default :from => "justin.thiele@gmail.com"
  
  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
end