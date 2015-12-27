class Tour < ActiveRecord::Base
  serialize :weblinks, Array
  has_and_belongs_to_many :cities, :join_table=>'tours_cities'
  has_and_belongs_to_many :hotels, :join_table=>"tours_hotels"
  has_and_belongs_to_many :tour_operators, :join_table=>"tours_operators_map"

end