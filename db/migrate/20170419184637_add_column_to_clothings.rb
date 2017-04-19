class AddColumnToClothings < ActiveRecord::Migration[5.0]
  def change
    add_column :clothings, :bought, :boolean
  end
end
