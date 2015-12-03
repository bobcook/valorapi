class TitleSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :icon, :description
end
