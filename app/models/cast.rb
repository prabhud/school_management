class Cast < ActiveRecord::Base
  attr_accessible :cast_name, :cast_des, :cast_active
  has_many :sub_casts, :dependent => :destroy
  
  before_validation :trim_space
  
  validates :cast_name, :presence =>  { :message => "Must be filled" }
  validates :cast_name, :uniqueness => { :case_sensitive => false,:message => "Already exists"}
  
end
