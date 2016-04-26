class UserMailer < ActionMailer::Base
  default from: 'apptest@daedal.co'

  def welcome_email(user)
    @user = user
    @url  = 'http://wine-com-s.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to Wine-Com-S')
  end
end
