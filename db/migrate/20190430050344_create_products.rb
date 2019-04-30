class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :shop, foreign_key: true
      t.string :name
      t.integer :stock
      t.integer :size
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
