class AddLabelToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :label, :string
  end
end
