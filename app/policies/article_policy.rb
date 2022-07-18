class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def new?
    user && (user.admin || user.super_admin)
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
  
  def index?
    true
  end
  
  def show?
    true
  end

  def destroy?
    new?
  end
end
