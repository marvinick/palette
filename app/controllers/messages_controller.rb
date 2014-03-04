class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :show]

  def index
    @messages = Message.order(:updated_at)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:notice] = "You have posted a message"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @message.update
      flash[:notice] = "You have updated your message"
      redirect_to messages_path(@messages)
    else
      render :edit
    end
  end



  private

  def message_params
    params.require(:message).permit(:note)
  end

  def set_message
    @message = Message.find(params[:id])
  end

end