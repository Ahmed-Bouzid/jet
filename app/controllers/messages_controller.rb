class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update]
  before_action :count_message, only: [:show, :index_admin, :create]

  
  

  def index
    @message = Message.new
    @messages = Message.all
    @users = User.all
    @admin = User.find(1)
  end

  def index_admin
    @message = Message.new
    @messages = Message.all
  end

  def show
    @reponse = Message.new

  end


  def new
    @message = Message.new
  end

  def edit
  end

  def create

    @content = params[:message][:content]
    if current_user.admin == true
      @message = Message.new(user_id: current_user.id, content: @content, dest_id: params[:dest_id])
    else
      @message = Message.new(user_id: current_user.id, content: @content)
    end
    
    respond_to do |format|
      if @message.save
        format.html { redirect_to request.referrer }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @message.update(user_id: current_user.id, content: @content)
        format.html { redirect_to @message }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer}
      format.json { head :no_content }
    end
  end



  def count_message
    @newmess = []
    @admin = User.find(1)
    @mess = Message.all

    @admin.messages.each do |mess|
      @mess.each do |message|
       if mess.dest_id == message.id
         if mess.created_at >= message.created_at
           @newmess << "#"
           @unread_messages = Message.last(@newmess.count)
         end
       end
     end
   end
 end



 private

 def set_message
    
    if User.find(current_user.id).admin == true
       @messages = (User.find(params[:id])).messages
       @reponses = Message.all
    else
      @messages = (User.find(current_user.id)).messages
      @message = Message.find(params[:id])
    @reponses = Message.all
    end
  end

def message_params
  params.require(:message).permit(:user_id, :content)
end
end
