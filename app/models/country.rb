class Country < ActiveRecord::Base
  attr_accessible :iso, :name, :printable_name, :iso2, :iso3, :numcode, :textcode, :capital, :population
end
