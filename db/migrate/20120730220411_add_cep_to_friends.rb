class AddCepToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :cep, :string

  end
end
