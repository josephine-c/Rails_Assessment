class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :listing, foreign_key: true
      t.text :stripe_verification

      t.timestamps
    end
  end
end
