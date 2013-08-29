class AddHasChildrenHasParentChildrenCountToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :has_children, :string
    add_column :advancement_requirements, :has_parent, :string
    add_column :advancement_requirements, :children_count, :integer
  end
end
