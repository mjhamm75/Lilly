class DropMeritBadgeTable < ActiveRecord::Migration
  def change
    drop_table :merit_badges
  end
end
