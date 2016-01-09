class CreateTableCity < ActiveRecord::Migration
  def up
    create_table :cities do |t|
      t.integer :country_id
      t.string :name
      t.string :weather
      t.text :best_time_of_visit
      t.text :other_info
    end
  end

  def down
  end
end
