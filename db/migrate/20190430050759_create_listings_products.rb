class CreateListingsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :listings_products do |t|
      t.references :listing, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
