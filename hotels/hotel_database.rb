require "csv"
require "./hotel"
require "./null_hotel"
require "./listing"

class HotelDatabase
  def initialize
    @hotel_database = {}
    set_hotel_database
  end

  def prompt_user
    searched_item = search
    hotel = find_hotel(searched_item)
    Listing.new(hotel).print_details
  end

  private

  def set_hotel_database
    CSV.foreach('hotels.csv', headers: true) do |row|
      hotel = Hotel.new(row)
      @hotel_database[hotel.name] = hotel
    end
  end

  def find_hotel(searched_item)
    @hotel_database.fetch(searched_item, NullHotel.new)
  end

  def search
    puts @hotel_database.keys
    puts "What are you searching for?"
    gets.chomp
  end
end

hotel_database = HotelDatabase.new
hotel_database.prompt_user
