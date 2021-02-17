class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.references :destination, null: false, foreign_key: true
      t.string :rating

      t.timestamps
    end
  end
end
