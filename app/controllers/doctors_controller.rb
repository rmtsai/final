class DoctorsController < ApplicationController
skip_before_action :auth, only: [:new, :create]

  def index
  @doctors = Doctor.all
  end

  def show 
  @doctor = Doctor.find_by(id: params["id"])  
  @message = Message.new
  end

  def new
  @doctor = Doctor.new
  end
 
  def create
    @User = User.new 
    @User.email = params["email"]
    @User.password = params["password"]
    @User.save!

    @Doctor = Doctor.new
    @Doctor.name = params["doctor"]["name"]
    @Doctor.dob = params["doctor"]["dob"]
    @Doctor.education = params["doctor"]["education"]
    @Doctor.years_of_experience = params["doctor"]["years_of_experience"]
    @Doctor.specialty = params["doctor"]["specialty"]
    @Doctor.typeofdoctor_id = params["doctor"]["typeofdoctor_id"]
    @Doctor.hospital_id = params["doctor"]["hospital_id"]
    @Doctor.user_id = @User.id
    @Doctor.save!
  	
   	redirect_to doctor_url(@Doctor)
  end

  def edit
  	@doctor = Doctor.find_by(id: params["id"])
  end

  def update
  	@doctor = Doctor.find_by(id: params["id"])
  	@doctor.update(params["doctor"])
  	redirect_to doctors_url
  end

  def destroy
  	@doctor = Doctor.find_by(id: params["id"])
  	@doctor.delete
	redirect_to doctors_url
  end	

end




  