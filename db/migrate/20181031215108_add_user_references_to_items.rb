class AddUserReferencesToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :users, foreign_key: true
  end
end
