# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
kirsty = Lifter.new("Kirsty",100)
briana = Lifter.new("Briana", 100)
crux = Gym.new("Crux Climbing Center")
fit = Gym.new("24 Hour Fitness")
memb1 = Membership.new(70, kirsty, crux)
memb2 = Membership.new(20, kirsty, fit)
memb3 = Membership.new(20, briana, fit)
binding.pry

puts "Gains!"
