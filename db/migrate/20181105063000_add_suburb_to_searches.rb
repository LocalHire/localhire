class AddSuburbToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :suburb, :string
  end
end
