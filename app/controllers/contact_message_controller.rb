class ContactMessageController < ApplicationController
  
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(params[:contact_message])

    if @contact_message.save
      redirect_to posts_path, notice: 'Email was successfully sent.' 
    else
      render action: "new" 
    end
  end

end
