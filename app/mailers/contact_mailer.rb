class ContactMailer < ActionMailer::Base

  def contact_me(message)
   @message = message
   mail(to: "shawn.bercuson@gmail.com", subject: @message.subject, from: @message.email, body: @message.body)
  end

end
