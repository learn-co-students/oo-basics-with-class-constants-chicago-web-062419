require "pry";

class Shoe

  BRANDS = []

  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

tennis_shoe = Shoe.new("Adidas")
soccer_shoe = Shoe.new("Nike")
running_shoe = Shoe.new("Nike")
p Shoe::BRANDS