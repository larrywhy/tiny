class CreateTdls < ActiveRecord::Migration
  def change
    create_table :tdls do |t|
      t.string :todo
      t.boolean :isdone

      t.timestamps
    end
  end
end
