class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.text :name
      t.text :address
      t.jsonb :nodes

      t.timestamps
    end
  end
end
