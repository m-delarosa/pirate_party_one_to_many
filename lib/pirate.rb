class Pirate
  attr_accessor :name, 
                :age, 
                :eye_patch, 
                :ship

  @@all = []

  def initialize(name, age, ship, eye_patch = true)
    #When you set a default you have to put it as a last argument.
    @name = name
    @age = age
    @eye_patch = eye_patch
    @ship = ship
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.oldest
    all.max_by {|pirate| pirate.age}
  end
  
end