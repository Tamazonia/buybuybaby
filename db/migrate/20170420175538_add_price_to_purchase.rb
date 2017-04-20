class AddPriceToPurchase < ActiveRecord::Migration[5.0]
  def change
    add_column :purchases, :price, :integer
    add_column :purchases, :seller_id, :integer
  end
end
