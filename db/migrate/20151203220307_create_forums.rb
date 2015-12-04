class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name
      t.belongs_to :guild, index: true

      t.timestamps
    end
  end
end
