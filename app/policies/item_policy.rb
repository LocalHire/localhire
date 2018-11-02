class ItemPolicy < ApplicationPolicy
  # class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  # end
  
  attr_reader :user, :item

  def initialize(user, item)
    @user = user
    @item = item
  end

  def edit?
    @user == @item.lender.user #returns true /false
  end

  def destroy?
    @user == @item.lender.user #returns true /false
  end
end
