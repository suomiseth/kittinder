class Owner < ActiveRecord::Base
  has_many :cats
  # delegate :state, to: :cat

  def matched_owners_in_my_state
    cats.map do |cat| 
      cat.my_matches.map do |kitty|
        kitty.owner if kitty.owner.state == self.state
      end
    end.flatten.uniq
  end

  def matched_owners_in_my_city
    cats.map do |cat| 
      cat.my_matches.map do |kitty|
        kitty.owner if kitty.owner.city == self.city
      end
    end.flatten.uniq
  end
end
