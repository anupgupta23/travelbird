class CreateTableAttractions < ActiveRecord::Migration
  def up
    create_table :attractions do |t|
      t.string :name
      t.integer :city_id
      t.float :price
      t.string :start_time
      t.string :end_time
      t.string :closed_on
      t.text :other_details
      t.float :rating
      t.text :must_do
    end
  end

  def down
  end
end
