class CreateScoutRequirements < ActiveRecord::Migration
  def change
    create_table :scout_requirements do |t|
      t.integer :scout_id
      t.integer :requirement_id
      t.date :date_completed
      t.string :parent_initial
      t.string :leader_initial

      t.timestamps
    end
  end
end
