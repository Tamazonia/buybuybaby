class CreateClothings < ActiveRecord::Migration[5.0]
  def change
    create_table :clothings do |t|
      t.integer :price
      t.string :age
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
