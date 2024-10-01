class HomeController < ApplicationController
  def index
    session[:user_id] = @usera&.id
    if session[:user_id]
      @usera = Usera.find_by(session[:user_id])
      # @object&.id
      # if @usera.nil?
      # else
      # end
    end
  end
end
