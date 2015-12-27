class CreateTableToursCities < ActiveRecord::Migration
  def up
    create_table :tours_cities do |t|
      t.string :tour_id
      t.float :city_id
    end
  end

  def down
  end
end
