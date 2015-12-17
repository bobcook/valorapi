class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :last_login_date, :in_game_currency, :locale, :ban, :email_validated, :client_version, :player_name
  url [:user, :world, :village]
end
