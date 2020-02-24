require 'pry'

class Ship
  attr_accessor :name, :number_of_cannons

  @@all = []

  def initialize(name, number_of_cannons)
    @name = name
    @number_of_cannons = number_of_cannons
    @@all << self
  end

  def self.all
    @@all
  end

  def pirates
    Pirate.all.select do |pirate|
        pirate.ship == self
    end
  end
  # Ship#pirates
  #=> An array of all pirates on this ship.

  def pirate_names
    pirates.map {|pirate| pirate.name }
  end

  def self.most_cannons
    all.max_by {|ship| ship.number_of_cannons}
  end

  def self.most_pirates
    all.max_by {|ship| ship.pirates.length}
  end
  
  def add_pirate(name, age, eye_patch_value)
    Pirate.new(name, age, self, eye_patch = eye_patch_value) 
  end
end

# black_pearl = Ship.new("Black Pearl", 50)
# black_pearl.initialize #this is the same a .new
# black_pearl.name
# Ship.all
# Ship#name