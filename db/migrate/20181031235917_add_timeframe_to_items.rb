class AddTimeframeToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :per_hour_availability, :string
    add_column :items, :per_day_availability, :string
    add_column :items, :per_week_availability, :string
    
  end
end
