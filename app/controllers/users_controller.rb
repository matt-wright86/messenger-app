class UsersController < ApplicationController



  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome to Msngr"
    else
      render :new
    end
  end

  def show
      @user = User.find(params[:id])
      @msg = Message.where("user_id = ?", @user.id)
  end


end
