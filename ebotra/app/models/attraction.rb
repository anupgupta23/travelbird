class Attraction < ActiveRecord::Base
  attr_accessible :name, :city_id , :price, :start_time, :end_time, :closed_on, :other_details, :rating, :must_do
  validates_presence_of :city_id, :name, :price, :start_time, :end_time, :rating, :must_do
  belongs_to :city
  has_many :attraction_themes
  has_many :attraction_categories
  has_many :attraction_generals
  after_destroy :delete_relations
  def self.headers
    ['name', 'city_name', 'price', 'start_time', 'end_time' , 'closed_on', 'other_details','rating', 'must_do']
  end

  def delete_relations
    self.attraction_generals.map(&:destroy)
  end

end