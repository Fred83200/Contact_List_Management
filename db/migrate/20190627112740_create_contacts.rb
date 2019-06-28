class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :department
      t.references :manager

      t.timestamps
    end
    add_foreign_key :contacts, :users, column: :manager_id, primary_key: :id
  end
end
