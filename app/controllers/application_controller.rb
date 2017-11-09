class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :user_signed_in?

  def current_user
  	if session[:user_id]
  		User.find(session[:user_id])
  	end
  end

  def user_signed_in?
  	!session[:user_id].nil?
  end
end
