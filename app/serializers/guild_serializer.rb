class GuildSerializer < ActiveModel::Serializer
  attributes :id, :name, :guild_tag, :description, :welcome_message_subject, :welcome_message_description, :world_id
end
