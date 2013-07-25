class DropMeritBadgeAndRanksTables < ActiveRecord::Migration
  def change
    drop_table :merit_badges
    drop_table :ranks
  end
end
