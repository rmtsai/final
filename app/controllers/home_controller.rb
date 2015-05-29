class HomeController < ApplicationController
skip_before_action :auth

def index
end

def show
end

def new
  @user = User.new
end

def create
 doctor_params = params.require(:doctor).permit(:name, :email, :password, :doctortype)
  @doctor = Doctor.create(doctor_params)
  if @doctor.valid?
    session["doctor_id"] = @doctor.id
    redirect_to "/doctors/"

  else
    render "/doctors/"
  end
end

end 