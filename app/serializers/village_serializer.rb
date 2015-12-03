class VillageSerializer < ActiveModel::Serializer
  attributes :id, :x, :y, :building_stats, :score_value
end
