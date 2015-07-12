# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  i += 1
  Owner.create(name: "name #{i}", state: "state #{i}", city: "city #{i}")
end

10.times do |i|
  i += 1
  #the first cat won't have an owner... he's a stray. haha.  
  Cat.create(name: "cat #{i}", photo_url: "photo url #{i}", color: "color #{i}", blurb: "Lorem ipsum dolor sit amet.", owner_id: (i / 2))
end

Like.create(liker_id: 1, liked_id: 10)
Like.create(liker_id: 2, liked_id: 9)
Like.create(liker_id: 8, liked_id: 9)
Like.create(liker_id: 8, liked_id: 4)
Like.create(liker_id: 6, liked_id: 8)

Match.create(first_match_id: 3, second_match_id: 8)
Match.create(first_match_id: 4, second_match_id: 7)

Rejection.create(rejector_id: 5, rejected_id: 6)