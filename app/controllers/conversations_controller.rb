class ConversationsController < ApplicationController
  before_action :authenticate_user!


  # before_action :set_conversation, only: [:show, :create, :index]


  def index
    @users = User.all 
    @conversations = Conversation.all
  end

  def create 
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
        @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else 
        @conversation = Conversation.create!(conversation_params)    
    end
    
    redirect_to conversation_messages_path(@conversation)
  end

  # def show
  # end

  private

  # def set_conversation
    # @conversation= Conversation.find(params[:id])
  # end

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end 


end