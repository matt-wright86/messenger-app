class MessagesController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.where("id != ?", @current_user.id)
    @me = User.where("id = ?", @current_user.id)
    @people = @current_user.following_users
  end

  def new
    @message = Message.new
  end

def show
    @msg = Message.find(params[:id])
    @user = User.find(params[:uid])
end

def create
    @message = Message.new message_params
    if @message.save
      redirect_to root_path
    else
      render :new
    end
end

  def message_params
    params.require(:message).permit(:email, :msg, :created_at, :user_id, :current_user)
  end

end
