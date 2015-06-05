def index
  @reply = Reply.all
  end

  def show 
  @reply = Reply.find_by(id: params["id"])  
  end

  def new
  @reply = Reply.new
  end
    
  def create
    Reply.create(params["messages"])
    redirect_to messages_url
  end

  def destroy
    @reply = Reply.find_by(id: params["id"])
    @reply.delete
  redirect_to message_url
  end 

end