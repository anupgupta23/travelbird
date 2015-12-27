class Tour < ActiveRecord::Base
  serialize :weblinks, Array
  has_and_belongs_to_many :cities, :join_table=>'tours_cities'
end