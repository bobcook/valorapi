class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :start_date, :end_date
end
