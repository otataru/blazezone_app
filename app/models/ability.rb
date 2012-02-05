class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user

    if user.role? :admin
      can :manage, :all
    elsif user.role? :operator
      can :manage, Post
      can :manage, Comment
    elsif user.role? :author
      can :manage, Post
    else
      can :read, Post
      can :read, Comment
      can :create, Comment
      can :update, Comment do |comment|
        comment.try(:user) == user || user.role?(:moderator)
      end
    end
  end
end