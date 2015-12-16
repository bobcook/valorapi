class CreateTroops < ActiveRecord::Migration
  def change
    create_table :troops do |t|
      t.string :name
      t.references :village, index: true, foreign_key: true

      t.timestamps
    end
  end
end
