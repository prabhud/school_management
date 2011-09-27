class StudPreScDetail < ActiveRecord::Base
  attr_accessible :pre_sc_name, :pre_sc_principal_name, :pre_sc_address1, :pre_sc_address2, :pre_sc_state, :pre_sc_country, :pre_sc_pin, :pre_sc_tel_no, :pre_sc_web_addr, :pre_sc_email_addr, :pre_sc_fax_no, :pre_sc_last_studied, :pre_sc_leaving_date, :pre_sc_rea_of_leaving, :student
  belongs_to :student
end
