class TroopSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :village
end
