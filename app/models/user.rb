class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  after_create :send_welcome_email

  private
  
  def send_welcome_email
    UserMailer.welcome(self).deliver
  end

end
