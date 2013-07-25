class RemoveColumnsFromAdvancementTable < ActiveRecord::Migration
  def change
    remove_column :advancements, :merit_badge_id
    remove_column :advancements, :rank_id
    remove_column :advancements, :scout_id
  end
end
