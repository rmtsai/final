class UsersController < ApplicationController

  def new
  @user = User.new
  end
  	
  def create
  	
     @user = User.create(params["user"])
    if @user.valid?
      @doctor=Doctor.create
      @user.doctor_id=@doctor.id
      @doctor.name = @user.name 
      @doctor.save
      redirect_to doctors_path
    else
      render "new"
    end
  end

end




  