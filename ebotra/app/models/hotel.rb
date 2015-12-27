class Hotel < ActiveRecord::Base
  has_and_belongs_to_many :tours, :join_table=>"tours_hotels"
end