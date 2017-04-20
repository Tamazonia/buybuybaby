class AddColumnToClothings < ActiveRecord::Migration[5.0]
  def change
    add_column :clothings, :bought, :boolean, default: false
  end
end
