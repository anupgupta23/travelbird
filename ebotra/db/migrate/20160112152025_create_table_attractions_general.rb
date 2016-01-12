class CreateTableAttractionsGeneral < ActiveRecord::Migration
  def up
    create_table :attraction_general do |t|
      t.integer :attraction_id
      t.integer :pref_no
      t.string :name
      t.string :type
    end

  end

  def down
  end
end
