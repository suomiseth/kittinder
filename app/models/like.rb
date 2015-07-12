class Like < ActiveRecord::Base
  belongs_to :liker, :class_name => "Cat", :foreign_key => :liker_id
  belongs_to :liked, :class_name => "Cat", :foreign_key => :liked_id
end
