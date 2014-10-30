require "./parser"

class Hotel
  attr_reader :name, :city, :phone_number, :single_beds, :double_beds

  def initialize(info)
    parser = Parser.new(info)
    parse_info(parser)
  end

  def parse_info(parser)
    @name = parser.as_pretty_string("Hotel")
    @city = parser.as_pretty_string("City")
    @phone_number = parser.as_pretty_phone_number("Phone Number")
    @single_beds = parser.as_integer("Number of Singles")
    @double_beds = parser.as_integer("Number of Doubles")
  end
end
