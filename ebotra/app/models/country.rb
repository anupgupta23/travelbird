class Country < ActiveRecord::Base
  serialize :weblinks, Array
  attr_accessible :name, :continent
  has_many :cities
  validates_uniqueness_of :name
  validates_presence_of :name,:continent

  def self.get_all_countries_map
    Country.all.map{|c| [c.name,c.id]}
  end
  def self.continent_list
    ["Africa", "Asia", "Australia", "Antarctica", "North America", "South America", "Europe"]
  end

end