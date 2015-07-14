class Cat < ActiveRecord::Base
  belongs_to :owner
  has_many :actions_as_actor, :class_name => "Action", :foreign_key => :actor_id
  has_many :actions_as_receiver, :class_name => "Action", :foreign_key => :receiver_id

  validates_presence_of :owner
end
