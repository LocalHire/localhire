class ChangeColumnNameInItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :min_hours_per_hire, :max_hours_per_hire
  end
end
