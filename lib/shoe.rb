# have the Shoe class somehow be able to keep track of all of the brands of all of the Shoes we create
require 'pry'
class Shoe
  attr_accessor :condition
  attr_reader :brand
  # assign empty array to BRANDS constant so later on can push brands in
  # keeps track of all brands
  # only keeps track of unique brands
  BRANDS = []
  def initialize(brand)
    @brand = brand
    if !(BRANDS.include?(@brand))
      BRANDS << @brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
nike = Shoe.new("nike")
p nike
nike.cobble