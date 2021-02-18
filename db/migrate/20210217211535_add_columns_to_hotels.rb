class AddColumnsToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :likes, :integer
  end
end
