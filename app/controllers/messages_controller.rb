class MessagesController < ApplicationController

  before_action :authenticate_user!

  def index
     @users = User.where("id != ?", @current_user.id)
    #  @current_user.following_users

    follower_ids = @current_user.following_users.pluck(:id)
    all_ids = follower_ids <<  @current_user.id
    @people = Message.where(user_id: all_ids).order("created_at DESC")
  end


    # follower_ids = following_users.pluck(:id)
    # all_ids = follower_ids << user.id
    # Message.where(user_id: all_ids).order("created_at DESC")


  def new
    @message = Message.new
  end

def show
    @msg = Message.find(params[:id])
    @user = User.find(params[:uid])
end

def create
    @message = Message.new message_params
    @message.user = @current_user
    if @message.save
      redirect_to root_path
    else
      render :new
    end
end

  def message_params
    params.require(:message).permit(:email, :msg)
  end

end
