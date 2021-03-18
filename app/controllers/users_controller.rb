class UsersController < ApplicationController
  def new
    @user = User.new()
  end

  def create
    @user = User.new(whitelisted_user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  private
  def whitelisted_user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
