class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :hireduration

      t.timestamps
    end
  end
end
