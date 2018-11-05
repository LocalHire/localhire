class AddMinMaxPriceToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :minprice, :integer
    add_column :searches, :maxprice, :integer
  end
end
