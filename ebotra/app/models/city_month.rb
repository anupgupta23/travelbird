class CityMonth < ActiveRecord::Base
  attr_accessible :month, :city_id
  belongs_to :city

  def self.possible_months
    ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August','September', 'October', 'November', 'December']
  end

end