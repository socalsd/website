class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order
      t.references :product
      t.integer :quantity, :default => 0
      t.decimal :discount, :scale => 2

      t.timestamps
    end
    add_index :line_items, :order_id
    add_index :line_items, :product_id
  end
end
