class CreateTableTours < ActiveRecord::Migration
  def up
    create_table :tours do |t|
      t.string :name
      t.float :duration_in_days
      t.float :budget
      t.text :weblinks
      t.text :details
    end
  end

  def down
  end
end
