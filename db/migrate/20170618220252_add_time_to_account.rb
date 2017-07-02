class AddTimeToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :time, :integer
  end
end
