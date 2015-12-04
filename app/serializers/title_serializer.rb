class TitleSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :icon, :description, :user_id
end
