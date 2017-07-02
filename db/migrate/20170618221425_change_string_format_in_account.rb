class ChangeStringFormatInAccount < ActiveRecord::Migration
  def change
    change_column :accounts, :period, :integer
  end
end
