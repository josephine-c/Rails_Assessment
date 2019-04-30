class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.references :shop, foreign_key: true
      t.integer :status
      t.integer :total

      t.timestamps
    end
  end
end
