class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :name2
      t.string :addres
      t.text :content

      t.timestamps null: false
    end
  end
end
