class AddGenderToClothing < ActiveRecord::Migration[5.0]
  def change
    add_column :clothings, :gender, :string
  end
end
