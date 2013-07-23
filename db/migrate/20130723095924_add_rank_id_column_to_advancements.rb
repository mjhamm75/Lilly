class AddRankIdColumnToAdvancements < ActiveRecord::Migration
  def change
    add_column :advancements, :rank_id, :integer
  end
end
