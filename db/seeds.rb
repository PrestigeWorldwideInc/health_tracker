# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  CholoricIntake.create(calories: rand(100.0..1000.0), date: (Time.now - 1))
end

10.times do |i|
  StepCount.create(steps_taken: rand(1..400), date: (Time.now - 1))
end

10.times do |i|
  Weight.new(lbs: rand(100..300), date: (Time.now - 1))
end

10.times do |i|
  Exercise.create(calories_burned: rand(9.99..70.0), exercise_type_id: rand(1..2), duration: rand(1.0..60.0), name: ["cycling", "jogging", "weight training"].sample, exertion: rand["Low", "Medium", "High"].sample)
end
