class Hotel
  attr_reader :name, :city, :phone_number, :single_beds, :double_beds

  def initialize(info)
    @name = info["Hotel"]
    @city = info["City"]
    @phone_number = info["Phone Number"]
    @single_beds = info["Number of Singles"]
    @double_beds = info["Number of Doubles"]
  end
end
