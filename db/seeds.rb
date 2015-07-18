# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |i|
  i += 1
  Owner.create(name: "crazy cat lady #{i}", state: "NY", city: "NYC", photo_url: "https://hellokathyrawr.files.wordpress.com/2015/04/ccl.jpg")
end

###### seed the db with owner data
Owner.create(
  name: "Chuck Norris",
  state: "No one knows",
  city: "No one knows",
  photo_url: "http://cdn.playbuzz.com/cdn/cb7190c0-906c-4bfc-8725-2d308c40f60a/e0949af2-7ba9-4fe3-8d95-df5d15af0661.jpg",
  saying: "Death once had a near-Chuck-Norris experience."
  )

Owner.create(
  name: "Oprah Winfrey",
  state: "CA",
  city: "LA",
  photo_url: "http://38.media.tumblr.com/tumblr_lifw7mP0761qz7o2oo1_400.gif",
  saying: "You get a cat... and you get a cat.... and you..."
  )

Owner.create(
  name: "Jay-Z",
  state: "NY",
  city: "NYC",
  photo_url: "https://a3-images.myspacecdn.com/images03/35/a03b92e0338b4b229ae5e3cb379a2907/300x300.jpg",
  saying: "My cat is better than Nas' cat"
  )

Owner.create(
  name: "Michelle Obama",
  state: "MD",
  city: "DC",
  photo_url: "http://i.ytimg.com/vi/mbICDkQb46g/maxresdefault.jpg",
  saying: ""
  )

Owner.create(
  name: "Mike Tyson",
  state: "NV",
  city: "Las Vegas",
  photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSkRA3zXLwqRyjtTNOR1amvjni274ds6jEvT-JPc3KdqiTATw_Wwg",
  saying: "I just want to conquer people and their souls."
  )

Owner.create(
  name: "Neo",
  state: "Zion",
  city: "Zion",
  photo_url: "http://scifidramaqueen.files.wordpress.com/2011/01/the-matrix-neo.jpg",
  saying: "There is no spoon"
  )

Owner.create(
  name: "Marshall Mathers",
  state: "MI",
  city: "D-town",
  photo_url: "https://s-media-cache-ak0.pinimg.com/236x/9b/66/43/9b6643bc6656fcbbed52410c2f010d0b.jpg",
  saying: "Why am I so angry all the time?"
  )

Owner.create(
  name: "This Weird Guy",
  state: "AL",
  city: "Cullman",
  photo_url: "http://i.imgur.com/tFWOl.jpg",
  saying: "What?"
  )

Owner.create(
  name: "I like turtles",
  state: "I like turtles",
  city: "I like turtles",
  photo_url: "http://38.media.tumblr.com/tumblr_lv4mlsbfCc1qkhtxx.png",
  saying: "I like tutles"
  )

#edit the cat info 
Cat.create(name: "Brad Kitt", sex: "male", photo_url: "http://wallpapersinhq.com/images/medium/a-cool_cat_with_the_glasses-1471504.jpg", color: "gray", blurb: "I'd like to design something like a city or a museum. I want to do something hands on rather than just play golf which is the sport of the religious right.", owner_id: 1)
Cat.create(name: "Catalie Portman",sex: "female", photo_url: "http://s3.favim.com/orig/47/cat-cute-kitty-Favim.com-433645.jpg", color: "Calico", blurb: "Cute is when a person's personality shines through their looks. Like in the way they walk, every time you see them you just want to run up and hug them.", owner_id: 2)
Cat.create(name: "Lily Pad",sex: "female", photo_url: "https://scontent-ord1-1.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/p206x206/10487253_10153118466767796_8159052273860518180_n.jpg?oh=720710c2587d74fae645ec3dcf358598&oe=561E8135", color: "Calico", blurb: "Lilies may kill you but I will love you forever.", owner_id: 3)
Cat.create(name: "Max",sex: "male", photo_url: "/images/cat.jpg", color: "orange", blurb: "I like wacking other cats and my favorite drink is water", owner_id: 3)
Cat.create(name: "Pumpkin",sex: "female", photo_url: "http://farm3.static.flickr.com/2177/1808395977_5c6a1ea382.jpg", color: "orange", blurb: "Pumpkin Pie!", owner_id: 4)
Cat.create(name: "Cupcakes",sex: "female", photo_url: "https://41.media.tumblr.com/c1126344e2d4971dc734c177c59b64ca/tumblr_myx82s2Lh51shf8zxo1_500.jpg", color: "white/gray", blurb: "I love cupcakes. Get me a cupcake.", owner_id: 5)
Cat.create(name: "Doctor Mew",sex: "male", photo_url: "http://4everstatic.com/pictures/674xX/fun/animals/doctor,-cat-213520.jpg", color: "brown", blurb: "Can I take your temperature? Because you're looking hot today.", owner_id: 6)
Cat.create(name: "Kit Romney",sex: "male", photo_url: "http://stylonica.com/wp-content/uploads/2014/03/cute-cat-picture-wallpaper.jpg", color: "white/gray", blurb: "Global warming obviously doesn't exist - YOU'RE the one heating up the place!", owner_id: 7)
Cat.create(name: "Robert Kattison",sex: "male", photo_url: "http://f.tqn.com/y/petsupplies/1/S/Y/1/-/-/c5.jpg", color: "gray/black", blurb: "Twilight? No.. haven’t heard of it", owner_id: 8)
Cat.create(name: "Marshmallow",sex: "male", photo_url: "http://in.bookmyshow.com/entertainment/wp-content/uploads/image/1do%20not%20open-curiosity%20killed%20the%20cat/this%20cat%20that%20reminds%20you%20of%20a%20marshmallow.jpg", color: "white/orange", blurb: "We're like hot chocolate and marshmallows. You're hot and I want to be on top of you.", owner_id: 9)
Cat.create(name: "Bubz",sex: "male", photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/most-popular-cats-lil-bub-2.jpg", color: "gray", blurb: "Blub blub", owner_id: 10)
Cat.create(name: "Grumpy Cat", sex: "male",photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/most-popular-cats-grumpy-cat-4.jpg", color: "white/brown", blurb: "I like long walks, especially when they are taken by poeople who annoy me.", owner_id: 11)
Cat.create(name: "Pusheen", sex: "male",photo_url: "http://38.media.tumblr.com/tumblr_lkqkraG6741qhy6c9o1_400.gif", color: "gray", blurb: "I like to eat, sleep, and eat some more.", owner_id: 12)
Cat.create(name: "Maru",sex: "female", photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/famous-internet-cats-221.jpg", color: "white/gray/brown", blurb: "I am the master of boxes.", owner_id: 13)
Cat.create(name: "Garfield",sex: "male", photo_url: "https://outnow.ch/Media/Movies/Bilder/2006/Garfield2/movie.ws/09.jpg", color: "orange", blurb: "Eat every meal as though it were your last.", owner_id: 14)
Cat.create(name: "Shironeko",sex: "female", photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/shironeko-happy-cat-62.jpg", color: "white", blurb: "I like to sleep.", owner_id: 15)
Cat.create(name: "Hamilton",sex: "male", photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/most-popular-cats-hamilton-11__605.jpg", color: "white/gray", blurb: "Enter coffee shop – stay all day", owner_id: 6)
Cat.create(name: "Nala", sex: "female",photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/famous-internet-cats-2__605.jpg", color: "gray", blurb: "AHHHHHHHHHH!", owner_id: 7)

Cat.create(name: "Banye", sex: "female",photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/most-popular-cats-banye-omg-cat-1__605.jpg", color: "white/gray", blurb: "OMG", owner_id: 12)
Cat.create(name: "Kitler",sex: "male", photo_url: "http://static.boredpanda.com/blog/wp-content/uploads/2014/11/kitler-1__605.jpg", color: "White", blurb: "Struggle is the father of all things. It is not by the principles of humanity that man lives or is able to preserve himself above the animal world, but solely by means of the most brutal struggle.", owner_id: 14)
Cat.create(name: "Cleopatra",sex: "female", photo_url: "http://cdn.buzznet.com/assets/users6/beachut/default/lemon-head-cat--large-msg-1109380671-2.jpg", color: "White", blurb: "You be the Dairy Queen and I’ll be your Burger King: You treat me right, and I’ll do it your way.", owner_id: 15)
# chuck norris' cat
Cat.create(name: "Walker, Texas Ranger",sex: "male", photo_url: "http://i1300.photobucket.com/albums/ag95/partycatt/artworks-000076947994-7vk63n-original_zpsb15b0921.jpg", color: "Chuck Norris Colored", blurb: "You want a roundhouse kick to face from someone wearing these pants?", owner_id: 15)
# eminem's cat
Cat.create(name: "Shady",sex: "female", photo_url: "https://s-media-cache-ak0.pinimg.com/236x/f0/fa/51/f0fa51b929d29f70aba2ea70cc7a58e4.jpg", color: "white", blurb: "Why am I so angry all the time?", owner_id: 15)





## cats we can log in as
## twitter username: @_sexy_cat, password: sexycat ## 
Cat.create(name: "pretty sexy cat",sex: "male", photo_url: "https://reportsfromtherock.files.wordpress.com/2014/12/giphy-5.gif", color: "Mix", blurb: "Party's over.", owner_id: 10)
## github username: el-tigre-de-internet, password: eltigre1 ## this is mike tyson's cat
Cat.create(name: "el tigre",sex: "male", photo_url: "http://artatm.com/wp-content/uploads/2011/07/running_tiger.jpg", color: "orange", blurb: "hey...... ", owner_id: 1)


Match.create(actor_id: 1, receiver_id: 10, match_type: true)
Match.create(actor_id: 1, receiver_id: 9, match_type: true)
Match.create(actor_id: 1, receiver_id: 8, match_type: true)
Match.create(actor_id: 2, receiver_id: 9, match_type: false)
Match.create(actor_id: 3, receiver_id: 8)
Match.create(actor_id: 4, receiver_id: 7, match_type: false)
Match.create(actor_id: 5, receiver_id: 6, match_type: true)
Match.create(actor_id: 6, receiver_id: 5)
Match.create(actor_id: 7, receiver_id: 4, match_type: false)
Match.create(actor_id: 8, receiver_id: 3, match_type: true)
Match.create(actor_id: 9, receiver_id: 2)
Match.create(actor_id: 10, receiver_id: 1, match_type: false)
Match.create(actor_id: 1, receiver_id: 2, match_type: true)
Match.create(actor_id: 2, receiver_id: 3)
Match.create(actor_id: 3, receiver_id: 4, match_type: false)
Match.create(actor_id: 10, receiver_id: 1, match_type: true)
Match.create(actor_id: 9, receiver_id: 1, match_type: true)
Match.create(actor_id: 8, receiver_id: 1, match_type: true)
