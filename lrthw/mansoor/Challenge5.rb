class Car

  attr_accessor :name, :kilometres, :price

  def initialize(name, total_kilometres, price, owner)
    @name = name
    @total_kilometres = total_kilometres
    @price = price
    @owner = owner
  end

  def drive(number_of_kilometres)
    @total_kilometres += number_of_kilometres
    puts "The #{@name} drove #{number_of_kilometres} kilometres."
  end

  def sale_price
    @price -= @total_kilometres
    puts "The sale price is $#{@price}."
  end

  def information
    puts "Name: #{@name}, Kilometres: #{@total_kilometres}, Price: #{@price}, Owner: #{@owner}"
  end

  def change_owner(new_owner)
    @owner = new_owner
    puts "The owner is now #{new_owner}."
  end

end

ferrari = Car.new("Ferrari", 50000, 200000, "Tash")

ferrari.information
ferrari.drive(100)
ferrari.sale_price
ferrari.change_owner("Mansoor")

# Expected output:

# Name: Ferrari, Kilometres: 50000, Price: 200000, Owner: Tash
# The Ferrari drove 100 kilometres.
# The sale price is $149900.
# The owner is now Mansoor.