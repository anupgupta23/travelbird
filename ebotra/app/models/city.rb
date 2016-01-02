class City < ActiveRecord::Base
  serialize :places_and_attractions, Array
  attr_accessible :name, :places_and_attractions, :country_id
  has_and_belongs_to_many :tours, :join_table=>'tours_cities'
  belongs_to :country
  validates_presence_of :name, :places_and_attractions, :country_id
end