class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update, :destroy]

  def show
    @user = authorize User.find(params[:id])
  end

  def index
    @users = policy_scope(User)
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
