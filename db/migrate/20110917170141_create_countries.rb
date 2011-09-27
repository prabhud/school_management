class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :iso
      t.string :name
      t.string :printable_name
      t.string :iso2
      t.string :iso3
      t.integer :numcode
      t.string :textcode
      t.string :capital
      t.integer :population
      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
