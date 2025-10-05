# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table(:locations) do |t|
      t.text(:name)
      t.text(:address)
      t.text(:city)
      t.text(:state)
      t.text(:zip)
      t.text(:country)
      t.jsonb(:nodes)

      t.timestamps
    end
  end
end
