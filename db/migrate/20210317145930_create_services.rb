class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :icon
      t.integer :hotel_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
