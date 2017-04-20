class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :clothing






  def distance_price(distance)
    if distance < 100
      return 0
    elsif 300 > distance > 100
      return 10
    else
      return 50
    end
  end


end








# In Purchase Controller
  # purchase = Purchase.new(user_id: X ,clothing_id: Y)

  # seller_long = purchase.clothing.user.longitude
  # seller_lat = purchase.clothing.user.latitude
  # buyer_long = purchase.user.longitude
  # buyer_lat = purchase.user.latitude

