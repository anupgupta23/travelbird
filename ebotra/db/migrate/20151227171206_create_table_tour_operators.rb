class CreateTableTourOperators < ActiveRecord::Migration
  def up
    create_table :tour_operators do |t|
      t.string :name
      t.text :details
      t.string :contact
    end
  end

  def down
  end
end
