class Country < ActiveRecord::Base
  serialize :weblinks, Array
  has_many :cities
end