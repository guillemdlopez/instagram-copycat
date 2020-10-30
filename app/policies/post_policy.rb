class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  # def new?
  #   true
  # end

  # def edit?
  #   record.user == user
  # end

  def update?
    user_owner_or_admin
  end

  def destroy?
    user_owner_or_admin
  end

  private

  def user_owner_or_admin
    user == record.user || user.admin
  end
end
