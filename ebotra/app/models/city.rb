class City < ActiveRecord::Base
  attr_accessible :name, :best_time_of_visit, :country_id,:weather, :other_info
  has_and_belongs_to_many :tours, :join_table=>'tours_cities'
  belongs_to :country
  validates_presence_of :name, :country_id , :weather
end