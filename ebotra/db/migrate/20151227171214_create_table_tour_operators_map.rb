class CreateTableTourOperatorsMap < ActiveRecord::Migration
  def up
    create_table :tours_operators_map do |t|
      t.integer :tour_id
      t.integer :tour_operator_id
    end
  end

  def down
  end
end
