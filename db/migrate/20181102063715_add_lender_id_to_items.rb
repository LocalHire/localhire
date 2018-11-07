class AddLenderIdToItems < ActiveRecord::Migration[5.2]
  def change
    # add_column :items, :lender_id, :integer
    add_reference :items, :lender, foreign_key: true
  end
end


