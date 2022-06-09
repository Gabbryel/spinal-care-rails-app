class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
  def new?
    true
  end

  def create?
    new?
  end

  def destroy
    user.admin || user.super_admin
  end
end