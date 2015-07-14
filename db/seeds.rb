# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  i += 1
  Owner.create(name: "name #{i}", state: "state #{i}", city: "city #{i}", photo_url: "Lorem ipsum dolor.", saying: "Lorem ipsum dolor sit amet.")
end

10.times do |i|
  i += 1
  Cat.create(name: "cat #{i}", photo_url: "photo url #{i}", color: "color #{i}", blurb: "Lorem ipsum dolor sit amet.", owner_id: (i / 2))
end


Action.create(actor_id: 1, receiver_id: 10, action_type: true)
Action.create(actor_id: 2, receiver_id: 9, action_type: false)
Action.create(actor_id: 3, receiver_id: 8)
Action.create(actor_id: 4, receiver_id: 7, action_type: false)
Action.create(actor_id: 5, receiver_id: 6, action_type: true)
Action.create(actor_id: 6, receiver_id: 5)
Action.create(actor_id: 7, receiver_id: 4, action_type: false)
Action.create(actor_id: 8, receiver_id: 3, action_type: true)
Action.create(actor_id: 9, receiver_id: 2)
Action.create(actor_id: 10, receiver_id: 1, action_type: false)
Action.create(actor_id: 1, receiver_id: 2, action_type: true)
Action.create(actor_id: 2, receiver_id: 3)
Action.create(actor_id: 3, receiver_id: 4, action_type: false)