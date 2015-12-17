class AddBuildingCurrentLevelToConstructionRequests < ActiveRecord::Migration
  def change
    add_column :construction_requests, :building_current_level, :integer
  end
end
