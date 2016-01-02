class CreateTableTravelStyles < ActiveRecord::Migration
  def up
    create_table :travel_styles do |t|
      t.integer :tour_id
      t.boolean :style1
      t.boolean :style2
      t.boolean :style3
      t.boolean :style4
      t.boolean :style5
      t.boolean :style6
      t.boolean :style7
      t.boolean :style8
    end
  end

  def down
  end
end
