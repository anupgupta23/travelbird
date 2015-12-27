class TourOperator < ActiveRecord::Base
  has_and_belongs_to_many :tour, :join_table=>"tours_operators_map"


end