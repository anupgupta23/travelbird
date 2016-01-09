class Attraction < ActiveRecord::Base
  attr_accessible :name, :city_id , :price, :start_time, :end_time, :closed_on, :other_details, :rating, :must_do
  validates_presence_of :city_id, :name, :price, :start_time, :end_time, :rating, :must_do
  belongs_to :city

  def self.headers
    ['name', 'city_name', 'price', 'start_time', 'end_time' , 'closed_on', 'other_details','rating', 'must_do']
  end
end