class UsersController < ApplicationController
  def show
  end

  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = authorize User.find(params[:id])
    if @user.update(users_params)
      redirect_to admin_path
    end
  end

  def destroy
  end

  private

  def users_params
    params.require(:user).permit(:admin, :super_admin)
  end
end
