class City < ActiveRecord::Base
  attr_accessible :name, :best_time_of_visit, :country_id,:weather, :other_info, :for_months
  has_and_belongs_to_many :tours, :join_table=>'tours_cities'
  belongs_to :country
  has_many :city_months
  accepts_nested_attributes_for :city_months
  validates_presence_of :name, :country_id , :weather

  def for_months= months
    return if months.blank?
    months.each do |name|
      self.city_months.build(:month=>name)
    end
  end

end