class CreateStudPreScDetails < ActiveRecord::Migration
  def self.up
    create_table :stud_pre_sc_details do |t|
      t.string :pre_sc_name
      t.string :pre_sc_principal_name
      t.string :pre_sc_address1
      t.string :pre_sc_address2
      t.string :pre_sc_city
      t.string :pre_sc_state
      t.string :pre_sc_country
      t.string :pre_sc_pin
      t.string :pre_sc_tel_no
      t.string :pre_sc_web_addr
      t.string :pre_sc_email_addr
      t.string :pre_sc_fax_no
      t.string :pre_sc_last_studied
      t.date :pre_sc_leaving_date
      t.text :pre_sc_rea_of_leaving
      t.references :student
      t.timestamps
    end
  end

  def self.down
    drop_table :stud_pre_sc_details
  end
end
