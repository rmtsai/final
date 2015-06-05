class MessagesController < ApplicationController

def index
  @message = Message.all
  end

  def show 
  @message = Message.find_by(id: params["id"])  
  end

  def new
  @message = Message.new
  end
    
  def create
  @message = Message.new(params["messages"])
  @Doctor = Doctor.find_by(user_id: current_user.id)
    
    if @message.save!
        redirect_to doctor_url(@Doctor)

    else
      render "new"
    end
  end

  def destroy
    @message = Message.find_by(id: params["id"])
    @message.delete
  redirect_to message_url
  end 
end

