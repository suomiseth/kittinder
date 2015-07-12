class Cat < ActiveRecord::Base
  belongs_to :owner
  has_many :likers, :class_name => "Like", :foreign_key => :liker_id
  has_many :likeds, :class_name => "Like", :foreign_key => :liked_id
  has_many :first_matches, :class_name => "Match", :foreign_key => :first_match_id
  has_many :second_matches, :class_name => "Match", :foreign_key => :second_match_id
  has_many :rejectors, :class_name => "Rejection", :foreign_key => :rejector_id
  has_many :rejecteds, :class_name => "Rejection", :foreign_key => :rejected_id
end
