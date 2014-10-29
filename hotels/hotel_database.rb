require "csv"

class HotelDatabase
  def initialize
    @hotel_database = {}
  end

  def read_hotel_database
    set_hotel_database
    puts @hotel_database
  end

  def set_hotel_database
    CSV.foreach('hotels.csv', headers: true) do |row|
      hotel = row["Hotel"]
      city = row["City"]
      populate_database(hotel, city)
    end
  end

  def populate_database(hotel, city)
    if !@hotel_database[hotel]
      @hotel_database[hotel] = []
    end
    @hotel_database[hotel] << city
  end
end

hotel_database = HotelDatabase.new
hotel_database.read_hotel_database
