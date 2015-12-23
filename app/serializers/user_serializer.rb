class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :last_login_date, :in_game_currency, :locale, :ban, :email_validated, :client_version, :player_name, :world_id

  has_many :worlds
  has_many :notifications
  has_many :titles
  has_many :iaps

end
