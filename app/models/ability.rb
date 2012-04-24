class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 1
      can :read
      can :update, Coupon do |coupon|
        coupon.event.created_by == user.id
      end
      can :destroy, Coupon do |coupon|
        coupon.event.created_by == user.id
      end
      can :new,Coupon
      can :create,Coupon
     else
      can :read, Event
      can :read, Coupon
    end
  end
end
