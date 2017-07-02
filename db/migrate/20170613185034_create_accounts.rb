class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.float :amount
      t.string :rate_type
      t.float :interest
      t.string :period
      t.float :rate
      t.references :user

      t.timestamps null: false
    end
  end
end
