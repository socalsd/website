class AddSaleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :onsale, :boolean
    add_column :products, :product_page_tag, :string
    add_column :products, :old_price, :decimal
  end
end
