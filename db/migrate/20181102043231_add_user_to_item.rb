class AddUserToItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :users_id, :integer
    add_column :items, :user_id, :integer
  end
end
