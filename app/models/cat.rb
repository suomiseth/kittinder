class Cat < ActiveRecord::Base
  belongs_to :owner
  has_many :actions_as_actor, :class_name => "Action", :foreign_key => :actor_id
  has_many :actions_as_receiver, :class_name => "Action", :foreign_key => :receiver_id

  validates_presence_of :owner


  def self.most_likes
    # cat with the most likes total
  end

  def self.most_rejections
    #cat with most rejctions total
  end

  def who_likes_me
    actions_as_receiver.where(action_type: true).map {|action| action.actor }
  end

  def who_rejected_me
    actions_as_receiver.where(action_type: false).map {|action| action.actor }
  end

  def who_i_like
    actions_as_actor.where(action_type: true).map {|action| action.receiver }
  end

  def who_i_rejected
    actions_as_actor.where(action_type: false).map {|action| action.receiver }
  end

  def my_like_percentage
    who_likes_me.count / ((who_likes_me.count) + (who_i_rejected.count))
  end

  def my_rejection_percentage
    1 - my_like_percentage
  end

  def my_matches
    who_likes_me & who_i_like
  end
end
