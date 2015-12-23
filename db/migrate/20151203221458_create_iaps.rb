class CreateIaps < ActiveRecord::Migration
  def change
    create_table :iaps do |t|
      t.string :reciept
      t.string :platform
      t.boolean :processed
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
