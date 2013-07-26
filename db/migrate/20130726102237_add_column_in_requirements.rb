class AddColumnInRequirements < ActiveRecord::Migration
  def change
    add_column :requirements, :requirement, :text
  end
end
