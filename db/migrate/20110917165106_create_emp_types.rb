class CreateEmpTypes < ActiveRecord::Migration
  def self.up
    create_table :emp_types do |t|
      t.string :emptype_name
      t.string :emptype_des
      t.boolean :emptype_active
      t.timestamps
    end
  end

  def self.down
    drop_table :emp_types
  end
end
