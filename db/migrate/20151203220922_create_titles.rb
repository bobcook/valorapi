class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.string :image
      t.string :icon
      t.string :description
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
