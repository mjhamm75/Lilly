class CreateMeritBadgeRequirements < ActiveRecord::Migration
  def change
    create_table :merit_badge_requirements do |t|
      t.integer :merit_badge_id
      t.integer :requirement_id

      t.timestamps
    end
  end
end
