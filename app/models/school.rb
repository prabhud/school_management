class School < ActiveRecord::Base
  attr_accessible :sc_name, :sc_address1, :sc_address2, :sc_city, :sc_state, :sc_pin, :sc_country, :sc_tel_no, :sc_web_addr, :sc_email_addr, :sc_fax_no, :sc_active
  has_many :employees, :dependent => :destroy
end
