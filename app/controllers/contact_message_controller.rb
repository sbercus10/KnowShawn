class ContactMessageController < ApplicationController
  
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(params[:contact_message])
    if @contact_message.valid?
      ContactMailer.contact_me(@contact_message).deliver
      redirect_to posts_path, notice: 'Email was successfully sent.' 
    else
      flash.now.alert = "Looks like there is an issue"
      render action: "new" 
    end
  end

end
