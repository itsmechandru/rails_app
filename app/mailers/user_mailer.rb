class UserMailer < ApplicationMailer
  default from: 'chandruanju92@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3030/login'
    mail(to: @user.email,
         subject: 'Welcome to My Awesome Site')
  end
end
