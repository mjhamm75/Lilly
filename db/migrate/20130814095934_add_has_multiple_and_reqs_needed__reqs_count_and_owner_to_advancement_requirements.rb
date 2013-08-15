class AddHasMultipleAndReqsNeededReqsCountAndOwnerToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :owner, :string
    add_column :advancement_requirements, :has_multiple, :boolean
    add_column :advancement_requirements, :reqs_needed, :integer
    add_column :advancement_requirements, :reqs_count, :integer
  end
end
