class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name
      t.references :guild, index: true, foreign_key: true

      t.timestamps
    end
  end
end
