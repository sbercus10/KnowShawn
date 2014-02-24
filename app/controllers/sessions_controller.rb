class SessionsController < ApplicationController

  def new

  end

  def create 
    # This is where our password authentication code will go
    user = User.find_by_email(params[:signin][:email])
    if user
      if user.authenticate(params[:signin][:password]) 
        session[:user_id] = user.id
        redirect_to root_path, notice: "Welcome back, #{user.first_name}!"
      else
        flash.now.alert = "Right email, wrong password."
        render :new 
      end
    
    else 
      flash.now.alert = "Nobody here with that email."
      render :new 
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out successfully"
  end
end

