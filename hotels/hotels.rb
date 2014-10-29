require "csv"

class Hotel
  hotels = []
  CSV.foreach('hotels.csv', headers: true) do |row|
   hotels << row
  end
  
  puts hotels["Hotel"]
  
end
