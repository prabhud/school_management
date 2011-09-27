class CreateSchools < ActiveRecord::Migration
  def self.up
    create_table :schools do |t|
      t.string :sc_name
      t.string :sc_address1
      t.string :sc_address2
      t.string :sc_city
      t.string :sc_state
      t.string :sc_country
      t.string :sc_pin
      t.string :sc_tel_no
      t.string :sc_web_addr
      t.string :sc_email_addr
      t.string :sc_fax_no
      t.boolean :sc_active
      t.timestamps
    end
  end

  def self.down
    drop_table :schools
  end
end
