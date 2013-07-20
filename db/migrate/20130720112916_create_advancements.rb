class CreateAdvancements < ActiveRecord::Migration
  def change
    create_table :advancements do |t|
      t.integer :scout_id
      t.integer :merit_badge_id

      t.timestamps
    end
  end
end
