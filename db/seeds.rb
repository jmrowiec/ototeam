# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |i|
  Group.create(name: "Grupa #{i}")
  Event.create(
      name: "Event #{i}",
      start: Date.new(2000+i, 1+i, 10+i),
      desc: "Opis #{i}",
      invFrom: Date.new(2000+i, 1+i, 10+i),
      invTo: Date.new(2000+i, 1+i, 12+i),
      limitFrom: 2*i,
      limitTo: 4*i,
      answerTime: i,
      showPpls: true
  )
  Friend.create(name: "Imie #{i}", email: "ktos#{i}@gmail.com", phone: 100000000+(i*rand(100000000)))
end
