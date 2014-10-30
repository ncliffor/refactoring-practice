require "csv"
require "./hotel"

class HotelDatabase
  def initialize
    @hotel_database = {}
    set_hotel_database
  end

  def set_hotel_database
    CSV.foreach('hotels.csv', headers: true) do |row|
      hotel = Hotel.new(row)
      @hotel_database[hotel.name] = hotel
    end
    @hotel_database
  end
end
