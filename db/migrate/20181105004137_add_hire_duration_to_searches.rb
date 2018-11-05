class AddHireDurationToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :duration, :integer
  end
end
