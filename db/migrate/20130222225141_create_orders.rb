class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.datetime :placed_at
      t.datetime :delivered_at
      t.datetime :payment_at
      t.integer :account_manager_id
      t.string :payment_type
      t.boolean :submitted
      t.decimal :total, :scale => 2

      t.timestamps
    end
    add_index :orders, :user_id
  end
end
