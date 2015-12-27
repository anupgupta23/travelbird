class Country < ActiveRecord::Base
  serialize :weblinks, Array
  has_many_and_belongs_to :cities, :through=>"tours_cities"
  has_many :cities
end