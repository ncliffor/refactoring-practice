class Listing
  def initialize(hotel)
    @hotel = hotel
  end

  attr_reader :hotel

  def print_details
    puts "Name: #{hotel.name}"
    puts "City: #{hotel.city}"
    puts "Phone Number: #{hotel.phone_number}"
    puts "Single Rooms: #{hotel.single_beds}"
    puts "Double Rooms: #{hotel.double_beds}"
  end
end
