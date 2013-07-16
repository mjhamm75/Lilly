class CreateMeritBadgeLists < ActiveRecord::Migration
  def change
    create_table :merit_badge_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
