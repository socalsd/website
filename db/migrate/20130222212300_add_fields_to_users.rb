class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :salon_id, :integer
    add_column :users, :phone, :string
    add_column :users, :status, :string
    add_column :users, :account_manager_id, :integer
  end
end
