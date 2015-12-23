class AddWorldConfigurationRefToWorlds < ActiveRecord::Migration
  def change
    add_reference :worlds, :world_configuration, index: true, foreign_key: true
  end
end
