class CreateTableCountries < ActiveRecord::Migration
  def up
    create_table :countries do |t|
      t.string :name
      t.string :continent
    end
  end

  def down
  end
end
