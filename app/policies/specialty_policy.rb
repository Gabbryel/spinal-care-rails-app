class SpecialtyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.admin && user.super_admin
  end

  def create?
    new?
  end

  def edit?
    new?
  end

  def update?
    new?
  end

  def show?
    new?
  end

  def index?
    new?
  end

  def destroy?
    new?
  end
end
