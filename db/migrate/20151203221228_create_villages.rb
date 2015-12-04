class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.integer :x
      t.integer :y
      t.binary :building_stats
      t.integer :score_value
      t.belongs_to :world, index: true

      t.timestamps
    end
  end
end
