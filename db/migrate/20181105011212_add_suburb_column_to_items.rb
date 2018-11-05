class AddSuburbColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :suburb, :string
  end
end
