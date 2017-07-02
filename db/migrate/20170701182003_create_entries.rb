class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :account
      t.float :amount
      t.timestamps null: false
    end
  end
end
