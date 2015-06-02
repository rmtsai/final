class UsersController < ApplicationController
skip_before_action :auth
  def new
  @user = User.new
  end
  	
  def create
  	
     @user = User.create(name: params["user"]) 
    if @user.valid?
      @doctor=Doctor.create
      @user.doctor_id=@doctor.id
      @doctor.name = @user.name 
      @doctor.save
      redirect_to home_index_path
    else
      render "new"
    end
  end

end





  