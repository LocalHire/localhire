class DefaultViewsToZeroInItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :views, :integer, :default =>0
  end
end
