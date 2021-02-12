require 'pry'

class Owner
  attr_reader :species, :name
  attr_accessor :pets

  @@all = []
  

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end

  

def say_species
   "I am a #{@species}."
  end

  
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
   Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
  Cat.new(name, self)  
  end

  def buy_dog(name)
  Dog.new(name,self)
  end 

  def walk_dogs
    self.dogs.each do |array|
      array.mood = "happy"
      array
    end
  end

  def feed_cats
    self.cats.each do |array|
      array.mood = "happy"
      array
    end
  end

  def sell_pets
    self.pets.each do |key, value|
      #  binding.pry
      value.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
  end
end
end



  def list_pets
    "I have #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

# code goes here
end