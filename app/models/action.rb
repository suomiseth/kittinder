class Action < ActiveRecord::Base
  belongs_to :actor, class_name: "Cat", foreign_key: :actor_id
  belongs_to :actor, class_name: "Cat", foreign_key: :receiver_id
end
