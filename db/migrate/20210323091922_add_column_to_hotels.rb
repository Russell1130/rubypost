class AddColumnToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :main_image, :string
  end
end
