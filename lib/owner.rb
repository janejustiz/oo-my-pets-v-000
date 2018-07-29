class Owner
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dog
  end

  def play_with_cats
  end

  def feed_fish
  end

  def sell_pets
  end

  def list_pets
    "I have #{self.pets[fishes].count} fish, #{self.pets[dogs].count} dog(s), and #{self.pets[cats].count} cat(s)."
  end
end
