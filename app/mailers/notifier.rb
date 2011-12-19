class Notifier < ActionMailer::Base
  default :from => "\"Justin Thiele [Favsi]\" <justin@favsi.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_friend.subject
  #
  
  def welcome_new_user(user)
    @user = user
    mail :to => @user.email, :subject => "Nice! Welcome To Favsi."
  end
  
end
