class AddColumnsToAdvancementTable < ActiveRecord::Migration
  def change
    add_column :advancements, :scout_id, :integer
    add_column :advancements, :requirement_id, :integer
  end
end
