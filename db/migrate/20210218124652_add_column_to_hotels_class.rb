class AddColumnToHotelsClass < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :image, :string
  end
end
