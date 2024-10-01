class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  before_action :set_current_user
  # before_action :check_session_expiration

  # private
  def set_current_user
    if session[:user_id]
      Current.user = Usera.find_by(id: session[:user_id])
    end
  end
end

#   def check_session_expiration
#     if session[:user_id].present? && session_expired?
#       session[:user_id] = nil
#       redirect_to root_path, alert: "Your session has expired. Please log in again."
#     end
#   end

#   def session_expired?
#     session[:expires_at].nil? || session[:expires_at] < Time.current
#   end
