#This file we will use to instanciate.
require_relative '../config/environment'

black_pearl = Ship.new("Black Pearl", 50)
jolly_roger = Ship.new("Jolly Roger", 10)

bob = Pirate.new("Bob", 32, black_pearl)
jack = Pirate.new("Jack Sparrow", 36, black_pearl, false)
mike = Pirate.new("Mike", 44, black_pearl, false)
mike2 = Pirate.new("Mike D", 44, jolly_roger, false)
john = Pirate.new("John", 70, jolly_roger, false)
paul = Pirate.new("Paul", 44, jolly_roger)
george = Pirate.new("George", 90, jolly_roger)

# Tests:
# black_pearl.pirate_names
# p Pirate.oldest
# p Ship.most_cannons
# p Ship.most_pirates
p jolly_roger.add_pirate("Test", 75, false)
p jolly_roger.pirate_names

#Ship#pirates
#=> An array of all priates on this ship.