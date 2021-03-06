class CreateGuilds < ActiveRecord::Migration
  def change
    create_table :guilds do |t|
      t.string :name
      t.string :guild_tag
      t.string :description
      t.string :welcome_message_subject
      t.string :welcome_message_description
      t.references :world, index: true, foreign_key: true

      t.timestamps
    end
  end
end
