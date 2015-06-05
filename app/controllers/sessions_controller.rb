class SessionsController < ApplicationController
  layout false
  skip_before_action :auth
  def create
    # Do authentication
    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      if @Doctor = Doctor.find_by(user_id: user.id)
        redirect_to doctor_url(@Doctor)
    
    # if @Doctor = Doctor.find_by(user_id: user.id)
    #   redirect_to doctor_url(@Doctor)
    
      else
        @Patient = Patient.find_by(user_id: user.id)
        redirect_to patient_url(@Patient)
      end
 
    else
      redirect_to new_session_path, alert: "Bad username or password"
    end
  end

  def destroy
    session["user_id"] = nil
    redirect_to new_session_path, notice: "You are logged out."
  end
end
