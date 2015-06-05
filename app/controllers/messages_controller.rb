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
    Message.create(params["messages"])
    redirect_to messages_url
  end

  def destroy
    @message = Message.find_by(id: params["id"])
    @message.delete
  redirect_to message_url
  end 

end