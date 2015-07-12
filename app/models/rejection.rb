class Rejection < ActiveRecord::Base
  belongs_to :rejector, :class_name => "Cat", :foreign_key => :rejector_id
  belongs_to :rejected, :class_name => "Cat", :foreign_key => :rejected_id
end
