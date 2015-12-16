class ScholarSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :village
end
