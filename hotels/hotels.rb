require "csv"
require "./hotel_database"

class Hotel
  def search
    hotel_database = HotelDatabase.new
    hotel_database.read_hotel_database
    hotel_database.search
    # search_term = gets.chomp
    # result = hotel_database.keys
    # puts result
  end
end

hotel = Hotel.new
hotel.search
