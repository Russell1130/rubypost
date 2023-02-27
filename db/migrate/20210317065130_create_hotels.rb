class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
