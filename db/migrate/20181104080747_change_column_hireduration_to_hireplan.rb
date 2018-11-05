class ChangeColumnHiredurationToHireplan < ActiveRecord::Migration[5.2]
  def change
    rename_column :searches, :hireduration, :hireplan
  end
end
