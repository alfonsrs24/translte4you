class RegistrationController < ApplicationController
  def new
     @usera = Usera.new
  end
  def create
    # render plain: params[:usera]
    @usera = Usera.new(usera_params)
    @usera.is_active ||= false
    if @usera.save
      # session[:user_id] = @usera.id
      redirect_to root_path, notice: "Successfully created account. To access it should be activated"
    else
      render :new
    end
  end

  private

  def usera_params
    params.require(:usera).permit(:email, :password, :password_confirmation, :is_active)
  end
end
