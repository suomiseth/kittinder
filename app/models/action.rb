class Action < ActiveRecord::Base
  belongs_to :actor, class_name: "Cat", foreign_key: :actor_id
  belongs_to :receiver, class_name: "Cat", foreign_key: :receiver_id

  validates_presence_of :actor_id
  validates_presence_of :receiver_id


  def self.all_likes
    all.where(action_type: true)
  end

  def self.all_rejections
    all.where(action_type: false)
  end
end
