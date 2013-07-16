class CreateMeritBadges < ActiveRecord::Migration
  def change
    create_table :merit_badges do |t|
      t.integer :scout_id
      t.string :name
      t.boolean :eagle_required
      t.integer :percentage_complete

      t.timestamps
    end
  end
end
