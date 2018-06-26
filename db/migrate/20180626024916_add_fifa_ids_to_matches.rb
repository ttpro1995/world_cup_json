class AddFifaIdsToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :fifa_competition_id, :string
    add_column :matches, :fifa_season_id, :string
    add_column :matches, :fifa_group_id, :string
    add_column :matches, :fifa_stage_id, :string
    add_column :matches, :stage_name, :string
  end
end
