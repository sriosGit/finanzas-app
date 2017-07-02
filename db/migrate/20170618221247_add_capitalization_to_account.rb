class AddCapitalizationToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :capitalization, :integer
  end
end
