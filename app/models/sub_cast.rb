class SubCast < ActiveRecord::Base
  attr_accessible :subcast_name, :subcast_des, :subcast_active, :cast_id
  belongs_to :cast
  has_many :students, :dependent => :destroy
  
  before_validation :trim_space
  validates :subcast_name, :cast_id, :presence =>  { :message => "Must be filled" }
  validates :subcast_name, :uniqueness => { :case_sensitive => false,:message => "Already exists", :scope => :cast_id}
 
  
  
  def cast_with_subcast_name
     cast.cast_name.to_s + "-" +  subcast_name.to_s 
  end
  
  def cast_name
    cast.cast_name unless cast.nil?
  end
end
