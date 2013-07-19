class AddDefaultPercentageToMeritBadges < ActiveRecord::Migration
  def change
    change_column :merit_badges, :percentage_complete, :integer, :default => 0
  end
end
