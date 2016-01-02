class Hotel < ActiveRecord::Base
  has_and_belongs_to_many :tours, :join_table=>"tours_hotels"
  validates_presence_of :name,:details,:ratings
  attr_accessible :name,:details,:ratings
  validates_numericality_of :ratings
end