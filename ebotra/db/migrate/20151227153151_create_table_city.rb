class CreateTableCity < ActiveRecord::Migration
  def up
    create_table :cities do |t|
      t.integer :country_id
      t.string :name
      t.text :places_and_attractions
    end
  end

  def down
  end
end
