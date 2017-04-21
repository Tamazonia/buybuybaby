class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :clothing

  attr_accessor :month, :year

  def distance_price
    distance = Geocoder::Calculations.distance_between([clothing.user.longitude, clothing.user.latitude],
                                                       [user.longitude, user.latitude], :units => :km)

    if distance < 100
      return 0
    elsif 300 > distance and distance > 100
      return 10
    else
      return 50
    end
  end
end



