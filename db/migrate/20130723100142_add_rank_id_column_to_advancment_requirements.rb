class AddRankIdColumnToAdvancmentRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :rank_id, :integer
  end
end
