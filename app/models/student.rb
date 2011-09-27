class Student < ActiveRecord::Base
  #attr_accessible :stud_firstname, :stud_city, :stud_lastname, :stud_sex, :stud_dob, :stud_father_name, :stud_mother_name, :stud_guardian_name, :stud_address1, :stud_address2, :stud_state, :stud_pin, :country, :stud_identification, :stud_contact_number, :stud_blood_group, :stud_religion, :stud_nationality, :stud_mother_tounge, :stud_date_of_joining, :stud_active, :school, :sub_cast_id
  belongs_to :sub_cast
  belongs_to :school
  has_one :stud_pre_sc_detail, :dependent => :destroy
  
  before_validation :trim_space
  validates :stud_admission_no, :stud_firstname, :stud_dob, :stud_father_name, :stud_mother_name, :stud_address1, 
            :stud_city, :stud_state, :stud_pin,:stud_religion, :stud_nationality, :stud_std_admitted, :presence =>  { :message => "Must be filled" }
  validates :stud_contact_number,  :allow_blank => true, :uniqueness => { :case_sensitive => false, :message => "Already exists" }
  
  accepts_nested_attributes_for :stud_pre_sc_detail, :allow_destroy => :true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
  default_scope where(:applied_tc => false)
  
  def student_name
    [stud_firstname, stud_lastname].join(' ').strip
  end
  
  def student_address
    [stud_address1, stud_address2, stud_city, stud_state, stud_country, "Pin-#{stud_pin}"].join(', ').strip
  end
end
