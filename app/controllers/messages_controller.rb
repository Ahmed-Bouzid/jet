class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update]
  before_action :count_message_admin, only: [:show, :index_admin]
  before_action :count_message_user, only: [:index, :create]

  
  

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

  def count_message_admin

    @newmess_admin = []
    @unread_messages = []
    @admin = User.find(1)
    @mess = Message.all
    @mess.each do |mess|
      if mess.user_id != 1
        if ((@admin.messages.where(dest_id: mess.user_id)).last)!= nil && mess != nil
          if ((@admin.messages.where(dest_id: mess.user_id)).last).created_at < mess.created_at
            @newmess_admin << "#"
            @unread_messages << mess
          end
        end
      end
    end
    return @newmess_admin.length
  end


  def count_message_user

      # @newmess_user = []
      # @unread_messages = []
      # @admin = User.find(1)
      # @mess = Message.all
      # @mess.each do |mess|
      #   if mess.user_id != 1
      #     if @admin.messages.where(dest_id: mess.user_id).last.created_at < mess.created_at
      #       @newmess_user << "#"
      #       @unread_messages << mess
      #     end
      #   end
      # end
      # return @newmess_user.length

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
