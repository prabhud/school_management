class StudStdDetail < ActiveRecord::Base
  attr_accessible :rollno, :year_of_joining, :year_of_passing, :result, :section, :standard
  belongs_to :section
  belongs_to :standard
end
