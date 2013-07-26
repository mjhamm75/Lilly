class RemoveColumnInRequirements < ActiveRecord::Migration
  def change
    remove_column :requirements, :text
  end
end
