class City < ActiveRecord::Base
  serialize :places_and_attractions, Array
  has_many_and_belongs_to :tours, :through=>"tours_cities"
  belongs_to :country
end