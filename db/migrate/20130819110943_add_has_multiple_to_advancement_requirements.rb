class AddHasMultipleToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :has_multiple, :boolean, :default => false
  end
end
