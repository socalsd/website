class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :manufacturer
      t.references :category
      t.references :line
      t.string :name
      t.string :description
      t.string :size
      t.string :type
      t.decimal :price, :scale => 2

      t.timestamps
    end
    add_index :products, :manufacturer_id
    add_index :products, :category_id
    add_index :products, :line_id
  end
end
