class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :emp_name
      t.string :emp_address1
      t.string :emp_address2
      t.string :emp_city
      t.string :emp_state
      t.string :emp_pin
      t.string :emp_country
      t.string :emp_mobile
      t.string :emp_email
      t.boolean :emp_active
      t.references :emp_type
      t.references :school
      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
