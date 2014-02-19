class UserMailer < ActionMailer::Base
  default from: "noreply@knowshawn.com"

  def welcome(user)
   @user = User.find(user)
   mail(to: @user.email, subject: "Welcome #{@user.first_name} to KnowShawn")  
  end

end
