class CityMonth < ActiveRecord::Migration
  def up
    create_table :city_months do |t|
      t.string :month
      t.integer :city_id
    end
  end

  def down
  end
end
