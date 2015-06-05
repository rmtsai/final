class SessionsController < ApplicationController
  layout false
  skip_before_action :auth
  def create
    # Do authentication
    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id

    @Doctor = Doctor.find_by(user_id: user.id)
      redirect_to doctor_url(@Doctor)
 
    else
      redirect_to new_session_path, alert: "Bad username or password"
    end
end

  def destroy
    session["user_id"] = nil
    redirect_to root_path, notice: "You are logged out."
  end

end