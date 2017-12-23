class UserPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def show?
    user.admin? || record == user
  end

  def update?
    user.admin? 
  end

  def destroy?
    user.admin? && record !=user
  end

  def index?
    user.admin?
  end
end
