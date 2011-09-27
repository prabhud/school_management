class CreateSubCasts < ActiveRecord::Migration
  def self.up
    create_table :sub_casts do |t|
      t.string :subcast_name
      t.text :subcast_des
      t.boolean :subcast_active
      t.references :cast
      t.timestamps
    end
  end

  def self.down
    drop_table :sub_casts
  end
end
