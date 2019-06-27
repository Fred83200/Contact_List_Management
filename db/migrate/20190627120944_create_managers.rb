class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :department

      t.timestamps
    end
  end
end
