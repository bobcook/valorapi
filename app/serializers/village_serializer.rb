class VillageSerializer < ActiveModel::Serializer
  attributes :id, :x, :y, :building_stats, :score_value, :world_id

  belongs_to :world
end
