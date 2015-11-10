class CreateBmis < ActiveRecord::Migration
  def change
    create_table :bmis do |t|
      t.string :height
      t.string :weight
      t.timestamps null: false
    end
  end
end
