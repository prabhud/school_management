class CreateStudStdDetails < ActiveRecord::Migration
  def self.up
    create_table :stud_std_details do |t|
      t.string :rollno
      t.date :date_of_joining
      t.date :date_of_passing
      t.string :result
      t.string :grade
      t.references :section
      t.references :standard
      t.timestamps
    end
  end

  def self.down
    drop_table :stud_std_details
  end
end
