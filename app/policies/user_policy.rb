class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
    user == record || user.super_admin
  end
  def edit?
    user.super_admin
  end
  def update?
    edit?
  end
  def destroy?
    edit?
  end
end
