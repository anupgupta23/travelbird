class TourOperator < ActiveRecord::Base
  has_and_belongs_to_many :tour, :through=>"tours_operators_map"


end