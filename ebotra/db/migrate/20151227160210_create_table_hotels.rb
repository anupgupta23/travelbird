class CreateTableHotels < ActiveRecord::Migration
  def up
    create_table :hotels do |t|
      t.string :name
      t.text :details
      t.float :ratings
    end
  end

  def down
  end
end
