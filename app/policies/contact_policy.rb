class ContactPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    scope.all
  end

  def create?
    @user
  end

  def update?
    user.admin
  end

  def destroy?
    update?
  end
end
