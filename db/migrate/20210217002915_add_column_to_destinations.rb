class AddColumnToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :image, :string
  end
end
