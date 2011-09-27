class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :sec_name
      t.string :sec_des
      t.boolean :sec_active
      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
