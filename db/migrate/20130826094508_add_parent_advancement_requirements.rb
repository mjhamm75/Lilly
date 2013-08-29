class AddParentAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :parent, :integer
  end
end
