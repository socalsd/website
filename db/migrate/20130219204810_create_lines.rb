class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.references :manufacturer
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
