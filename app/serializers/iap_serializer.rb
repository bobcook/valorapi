class IapSerializer < ActiveModel::Serializer
  attributes :id, :reciept, :platform, :processed, :user_id
end
