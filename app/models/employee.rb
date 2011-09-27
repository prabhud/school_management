class Employee < ActiveRecord::Base
  attr_accessible :emp_name, :emp_address1, :emp_address2, :emp_state, :emp_pin, :emp_country, :emp_mobile, :emp_email, :emp_active, :emp_type, :school
  belongs_to :school
end
