class CreateCasts < ActiveRecord::Migration
  def self.up
    create_table :casts do |t|
      t.string :cast_name
      t.text :cast_des
      t.boolean :cast_active
      t.timestamps
    end
  end

  def self.down
    drop_table :casts
  end
end
