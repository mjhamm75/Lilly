class CreateScoutAdvancements < ActiveRecord::Migration
  def change
    create_table :scout_advancements do |t|
      t.integer :scout_id
      t.integer :advancement_id

      t.timestamps
    end
  end
end
