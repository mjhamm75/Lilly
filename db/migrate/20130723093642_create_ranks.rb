class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :name
      t.integer :ordinal

      t.timestamps
    end
  end
end
