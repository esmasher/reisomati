class AddColumnsToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :language, :string
    add_column :destinations, :population, :string
  end
end
