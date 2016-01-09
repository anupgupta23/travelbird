class CreateTableHotels < ActiveRecord::Migration
  def up
    create_table :hotels do |t|
      t.string :name
      t.string :city
      t.float :ratings
      t.string :tripadvisor_link
      t.text :other_info
    end
  end

  def down
  end
end
