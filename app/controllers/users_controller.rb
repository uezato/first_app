class UsersController < ApplicationController
  def show
    #Rails.env.debug(params)
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    print("UserController::create is called\n")
    #@user = User.new(params[:user])
    @user = User.new(user_params)
    if @user.save
      #success to save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    #params.require(:user).permit(:name, :email, :password, :password_confirmation)
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
