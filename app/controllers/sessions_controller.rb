class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end
  def new
  end
  def create
       user = Usera.find_by(email: params[:email], is_active: true)
       if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        # session[:expires_at] = 1.minute.from_now
        # redirect_to root_path, notice: "Logged in Successfully"
        redirect_to dashboard_path
       else
         flash[:alert] = "Invalid email or password"
         render :new
       end
  end
end
