class ContactMailer < ActionMailer::Base

  def contact_me(contact_message)
   @contact_message = ContactMessage.find(contact_message)
   mail(to: "shawn.bercuson@gmail.com", subject: @contact_message.subject, from: @contact_message.email, body: @contact_message.body)
  end

end
