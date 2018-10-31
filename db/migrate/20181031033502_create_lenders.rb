class CreateLenders < ActiveRecord::Migration[5.2]
  def change
    create_table :lenders do |t|
      t.integer :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
