class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :stud_admission_no
      t.string :stud_firstname
      t.string :stud_lastname
      t.string :stud_sex
      t.date :stud_dob
      t.string :stud_father_name
      t.string :stud_mother_name
      t.string :stud_guardian_name
      t.string :stud_address1
      t.string :stud_address2
      t.string :stud_city
      t.string :stud_state
      t.string :stud_country
      t.string :stud_pin
      t.text :stud_identification
      t.string :stud_contact_number
      t.string :stud_blood_group
      t.string :stud_religion
      t.string :stud_nationality
      t.string :stud_mother_tounge
      t.date :stud_date_of_joining
      t.string :stud_std_admitted
      t.boolean :stud_active
      t.boolean :applied_tc, :default => false
      t.references :school
      t.references :sub_cast
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
