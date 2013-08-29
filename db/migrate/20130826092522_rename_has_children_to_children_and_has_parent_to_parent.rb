class RenameHasChildrenToChildrenAndHasParentToParent < ActiveRecord::Migration
  def change
    rename_column :advancement_requirements, :has_children, :children
    rename_column :advancement_requirements, :has_parent, :parent
  end
end
