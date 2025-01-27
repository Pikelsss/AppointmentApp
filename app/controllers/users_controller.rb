class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create] 
  before_action :set_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice: 'Account updated successfully.'
    else
      render :edit
    end
  end

  def settings
  end

  private

  def set_user
    @user = current_user 
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end