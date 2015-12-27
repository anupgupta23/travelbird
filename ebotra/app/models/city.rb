class City < ActiveRecord::Base
  serialize :places_and_attractions, Array
  has_and_belongs_to_many :tours, :join_table=>'tours_cities'
  belongs_to :country
end