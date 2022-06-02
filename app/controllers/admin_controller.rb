class AdminController < ApplicationController
  def general
    @users = User.all.order(admin: :desc)
  end

  def team_members
  end

  def medical_appliances
  end
end
