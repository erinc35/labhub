class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_filter :require_login

  private

  def require_login
  	unless session[:user_id]
  	  redirect_to new_sessions_path
  	end
  end
end
