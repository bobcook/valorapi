class ConstructionRequestSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :village
end
