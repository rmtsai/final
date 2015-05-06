class DoctorsController < ApplicationController

  def index
    @doctors = Doctors.all
  end

  def new
    @doctors = Doctors.new
  end

  def create
  	Doctors.create(params["doctors"])
   	redirect_to doctors_url
  end

  def edit
  	@doctors = Doctors.find_by(id: params["id"])
  end

  def update
  	@doctors = Doctors.find_by(id: params["id"])
  	@doctors.update(params["doctors"])
  	redirect_to doctors_url
  end

  def destroy
  	@doctor = Doctors.find_by(id: params["id"])
  	@doctor.delete
	redirect_to doctors_url
  end	
end