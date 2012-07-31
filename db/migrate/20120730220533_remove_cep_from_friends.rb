class RemoveCepFromFriends < ActiveRecord::Migration
  def up
    remove_column :friends, :cep
      end

  def down
    add_column :friends, :cep, :string
  end
end
