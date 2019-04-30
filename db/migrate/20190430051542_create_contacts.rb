class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.references :contactable, polymorphic: true
      t.text :address
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps
    end
  end
end
