class DoctorsController < ApplicationController

  def index
  @doctor = Doctors.all
  end

  def new
  @doctor = Doctors.new
  end

  def show 
  end
  	
  def create
  	Doctors.create(params["doctors"])
   	redirect_to doctors_url
  end

  def edit
  	@doctor = Doctors.find_by(id: params["id"])
  end

  def update
  	@doctor = Doctors.find_by(id: params["id"])
  	@doctor.update(params["doctors"])
  	redirect_to doctors_url
  end

  def destroy
  	@doctor = Doctors.find_by(id: params["id"])
  	@doctor.delete
	redirect_to doctors_url
  end	

end




  