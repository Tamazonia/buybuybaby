class AddPhotoToClothing < ActiveRecord::Migration[5.0]
  def change
    add_column :clothings, :photo, :string
  end
end
