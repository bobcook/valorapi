class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.date :last_login_date
      t.float :in_game_currency
      t.string :locale
      t.boolean :ban
      t.boolean :email_validated
      t.float :client_version
      t.string :player_name

      t.timestamps
    end
  end
end
