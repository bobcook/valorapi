class CreateWorldConfigurations < ActiveRecord::Migration
  def change
    create_table :world_configurations do |t|
      t.string :primary_type
      t.string :secondary_type
      t.float :resource_speed
      t.float :unit_speed
      t.float :tech_speed
      t.boolean :market_active
      t.boolean :quest_active
      t.boolean :tutorial_on
      t.integer :population_limit
      t.integer :respawn_limit
      t.belongs_to :world, index: true

      t.timestamps
    end
  end
end
