require "./listing"
require "./null_hotel"
require "./hotel_database"

class HotelSearcher
  def initialize
    hotel_database = HotelDatabase.new
    @hotel_database = hotel_database.set_hotel_database
  end

  def prompt_user
    searched_item = search
    hotel = find_hotel(searched_item)
    Listing.new(hotel).print_details
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

hotel_searcher = HotelSearcher.new
hotel_searcher.prompt_user
