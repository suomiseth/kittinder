class Owner < ActiveRecord::Base
  has_many :cats
  # delegate :state, to: :cat
end
