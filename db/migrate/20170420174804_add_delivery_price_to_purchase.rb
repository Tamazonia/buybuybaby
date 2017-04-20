class AddDeliveryPriceToPurchase < ActiveRecord::Migration[5.0]
  def change
    add_column :purchases, :delivery_price, :integer
  end
end
