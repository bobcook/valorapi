class WorldConfigurationSerializer < ActiveModel::Serializer
  attributes :id, :primary_type, :secondary_type, :resource_speed, :unit_speed, :tech_speed, :market_active, :quest_active, :tutorial_on, :population_limit, :respawn_limit
end
