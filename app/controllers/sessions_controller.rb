class SessionsController < ApplicationController
  layout false
  skip_before_action :auth
  def create
    # Do authentication
    doctor = Doctor.find_by(email: params["email"])
    if doctor && doctor.authenticate(params["password"])
      session["doctor_id"] = user.id
      redirect_to "/doctors"
    else
      redirect_to new_session_path, alert: "Bad username or password"
    end
end

  def destroy
    session["doctor_id"] = nil
    redirect_to root_path, notice: "You are logged out."
  end

end