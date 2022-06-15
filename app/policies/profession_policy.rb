class ProfessionPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
  def new?
    user.admin || user.super_admin
  end
  def create?
    user.admin || user.super_admin
  end
  def edit?
    user.admin || user.super_admin
  end
  def update?
    user.admin || user.super_admin
  end
  def show?
    user.admin || user.super_admin
  end
  def index?
    user.admin || user.super_admin
  end
  def destroy?
    user.admin || user.super_admin
  end
end
