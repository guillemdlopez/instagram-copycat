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
    record.user == user
  end

  def destroy?
    user == record.user
  end
end
