class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :price_per_hour
      t.integer :min_hours_per_hire
      t.integer :price_per_day
      t.integer :max_days_per_hire
      t.integer :price_per_week
      t.integer :max_weeks_per_hire

      t.timestamps
    end
  end
end
