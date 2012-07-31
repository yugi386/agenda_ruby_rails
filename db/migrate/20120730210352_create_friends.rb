class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.date :birthday
      t.string :phone

      t.timestamps
    end
  end
end
