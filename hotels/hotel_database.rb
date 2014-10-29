class HotelDatabase
  def initialize
    @hotel_database = {}
  end

  def read_hotel_database
    set_hotel_database
    # puts @hotel_database
  end

  def set_hotel_database
    CSV.foreach('hotels.csv', headers: true) do |row|
      hotel = row["Hotel"]
      city = row["City"]
      populate_database(hotel, city)
    end
  end

  def search
    search_term = gets.chomp
    puts @hotel_database.fetch(search_term)
  end

  private

  def populate_database(hotel, city)
      @hotel_database[hotel] = []
    @hotel_database[hotel] << city
  end
end
