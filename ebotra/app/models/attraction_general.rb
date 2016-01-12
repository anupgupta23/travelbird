class AttractionGeneral < ActiveRecord::Base
  self.table_name="attraction_general"
  belongs_to :attraction
  attr_accessible :attraction_id, :name, :pref_no
  validates_presence_of :name, :pref_no

  def self.headers
    ['name', 'pref_no','attraction_id']
  end
end