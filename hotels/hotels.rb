require "csv"

class Hotel
  def hotel_database
    CSV.foreach('hotels.csv', headers: true) do |row|
      puts row["Hotel"]
    end
  end
end

hotel = Hotel.new
hotel.hotel_database
