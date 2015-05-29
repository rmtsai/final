class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception
  before_action :auth

helper_method :current_doctor
before_action :auth

  def auth
  	if current_doctor
  	else
  	  redirect_to new_session_url
  	end	
  end

  def current_doctor
	Doctor.find_by(id: session["doctor_id"])
  end

end

