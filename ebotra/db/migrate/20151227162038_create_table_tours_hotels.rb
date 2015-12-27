class CreateTableToursHotels < ActiveRecord::Migration
  def up
    create_table :tours_hotels do |t|
      t.integer :tour_id
      t.integer :hotel_id
    end
  end

  def down
  end
end
