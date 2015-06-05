class PatientsController < ApplicationController

  def index
  @patients = Patient.all
  end

  def show 
  @patient = Patient.find_by(id: params["id"])  
  end

  def new
  @patient = Patient.new
  end
    
  def create
    @User = User.new 
    @User.email = params["email"]
    @User.password = params["password"]
    @User.save!

    @Patient= Patient.new
    @Patient.name = params["patient"]["name"]
    @Patient.dob = params["patient"]["dob"]
    @Patient.diagnosis = params["patient"]["diagnosis"]
    @Patient.symptoms = params["patient"]["symptoms"]
    @Patient.level_of_pain = params["patient"]["level_of_pain"]
    @Patient.hospital_id = params["patient"]["hospital_id"]
    @Patient.doctor_id = params["patient"]["doctor_id"]
    @Patient.user_id = @User.id
    @Patient.save!

    redirect_to patients_url
  end

  def edit
    @patient = Patient.find_by(id: params["id"])
  end

  def update
    @patient = Patient.find_by(id: params["id"])
    @patient.update(params["patient"])
    redirect_to patients_url
  end

  def destroy
    @patient = Patient.find_by(id: params["id"])
    @patient.delete
  redirect_to patients_url
  end 

end




  
