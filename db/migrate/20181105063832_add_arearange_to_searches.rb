class AddArearangeToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :arearange, :integer
  end
end
