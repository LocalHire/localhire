class ChangeHiredurationToString < ActiveRecord::Migration[5.2]
  def change
    change_column :searches, :hireduration, :string
  end
end
