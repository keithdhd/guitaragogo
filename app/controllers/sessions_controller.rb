class SessionsController < ApplicationController
  def new
  end

  def create
   user = User.find_by_email(params[:email])

   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to saved_songs_path, notice: "Welcome!"
   else
     flash.now.alert = "invalid login credentials"
     render "new"
   end
  end

  def destroy
   session[:user_id] = nil
   redirect_to login_url, notice: "You are now logged out"
  end
end
