class UsersController < ApplicationController

  before_action :authenticate_user!


  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:email, :password, :password_confirmation)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
      @user = User.find(params[:id])
      @msg = Message.where("user_id = ?", @user.id)
  end


end
