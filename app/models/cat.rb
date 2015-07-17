class Cat < ActiveRecord::Base
  belongs_to :owner
  has_many :matches_as_actor, :class_name => "Match", :foreign_key => :actor_id
  has_many :matches_as_receiver, :class_name => "Match", :foreign_key => :receiver_id

  validates_presence_of :owner


  def self.find_or_create_from_auth_hash(auth_hash)
    if Cat.find_by(:name => auth_hash[:info][:name])
      Cat.find_by(:name => auth_hash[:info][:name])
    else
      create! do |cat|
        cat.provider = auth_hash["provider"]
        cat.uid = auth_hash["uid"]
        cat.name = auth_hash["info"]["name"]
        cat.owner = Owner.find(1)
      end
    end
  end

  def self.most_likes
    # cat with the most likes total
  end

  def self.most_rejections
    #cat with most rejctions total
  end

  def who_likes_me
    matches_as_receiver.where(match_type: true).map {|match| match.actor }
  end

  def who_rejected_mef
    matches_as_receiver.where(match_type: false).map {|match| match.actor }
  end

  def who_i_like
    matches_as_actor.where(match_type: true).map {|match| match.receiver }
  end

  def who_i_rejected
    matches_as_actor.where(match_type: false).map {|match| match.receiver }
  end

  def my_like_percentage
    who_likes_me.count.to_f / ((who_likes_me.count) + (who_i_rejected.count))
  end

  def my_rejection_percentage
    1 - my_like_percentage
  end

  def my_matches
    who_likes_me & who_i_like
  end
end
