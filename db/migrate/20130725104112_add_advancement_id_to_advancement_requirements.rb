class AddAdvancementIdToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :advancement_id, :integer
  end
end
