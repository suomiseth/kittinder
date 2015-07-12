class Match < ActiveRecord::Base
  belongs_to :first_match, :class_name => "Cat", :foreign_key => :first_match_id
  belongs_to :second_match, :class_name => "Cat", :foreign_key => :second_match_id
end
