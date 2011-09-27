class Section < ActiveRecord::Base
  attr_accessible :sec_name, :sec_des, :sec_active
  before_save :upcase_name
  
  def upcase_name
    self.sec_name = sec_name.upcase
  end
end
