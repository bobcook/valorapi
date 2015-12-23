class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.string :image
      t.string :icon
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
