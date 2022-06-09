class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    if !@user
      redirect_to root_path
      flash.alert = 'Habar n-am ce cauți!!!'
    else
      redirect_to root_path
      flash.alert = 'Ruta respectivă nu este disponibilă!'
    end
  end

  def index
    @users = policy_scope(User)
    redirect_to root_path
    flash.alert = 'Habar n-am ce cauți!!!'
  end

  def edit
  end

  def update
    if @user.update(users_params)
      redirect_to admin_path
    end
  end

  def destroy
    if @user.destroy
      redirect_to admin_path
    end
  end

  private

  def users_params
    params.require(:user).permit(:admin, :super_admin)
  end

  def set_user
    @user = authorize User.find(params[:id])
  end

end
